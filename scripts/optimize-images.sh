#!/bin/bash

# Image Optimization Script for Amaranth Site
# Optimizes images in-place within their respective folders
# Skips images that are already optimized to avoid re-processing

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

# Default optimization parameters
MAX_WIDTH=1600
MAX_HEIGHT=0  # 0 means unlimited height
MAX_EDGE=0    # 0 means disabled (use width/height instead)
QUALITY=85
TARGET_FOLDER=""  # Empty means process all folders

# Parse command line arguments
PREVIEW_MODE=false
while [[ $# -gt 0 ]]; do
    case $1 in
        --preview)
            PREVIEW_MODE=true
            shift
            ;;
        --folder)
            TARGET_FOLDER="$2"
            shift 2
            ;;
        --max-edge)
            MAX_EDGE="$2"
            MAX_WIDTH=0
            MAX_HEIGHT=0
            shift 2
            ;;
        --width)
            MAX_WIDTH="$2"
            MAX_EDGE=0
            shift 2
            ;;
        --height)
            MAX_HEIGHT="$2"
            MAX_EDGE=0
            shift 2
            ;;
        --quality)
            QUALITY="$2"
            shift 2
            ;;
        --help)
            echo "Image Optimization Script"
            echo "Usage: bash optimize-images.sh [options]"
            echo ""
            echo "Options:"
            echo "  --preview              Show what would be optimized (no changes)"
            echo "  --folder NAME          Process only a specific folder (e.g., 'events', 'posters')"
            echo "  --max-edge N           Limit longest edge to N pixels (width/height)"
            echo "  --width N              Max width in pixels (default: 1600)"
            echo "  --height N             Max height in pixels (default: unlimited)"
            echo "  --quality N            JPEG quality 1-100 (default: 85)"
            echo ""
            echo "Available folders: events, posters, projects, services, site, team"
            echo ""
            echo "Examples:"
            echo "  bash optimize-images.sh --preview"
            echo "  bash optimize-images.sh --folder tutorials --max-edge 800 --quality 75"
            echo "  bash optimize-images.sh --max-edge 1200 --quality 80"
            echo "  bash optimize-images.sh --width 1200 --quality 80"
            echo "  bash optimize-images.sh --folder events --preview"
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            echo "Use --help for usage information"
            exit 1
            ;;
    esac
done

echo -e "${GREEN}=== Amaranth Image Optimizer ===${NC}"
echo -e "${BLUE}Settings:${NC}"
if [ "$MAX_EDGE" -gt 0 ]; then
    echo "  Max Edge:   ${MAX_EDGE}px (longest dimension)"
else
    echo "  Max Width:  ${MAX_WIDTH}px"
    if [ "$MAX_HEIGHT" -gt 0 ]; then
        echo "  Max Height: ${MAX_HEIGHT}px"
    else
        echo "  Max Height: unlimited"
    fi
fi
echo "  Quality:    ${QUALITY}"
if [ -n "$TARGET_FOLDER" ]; then
    echo "  Target:     $TARGET_FOLDER/ (specific folder)"
else
    echo "  Target:     all folders"
fi
if [ "$PREVIEW_MODE" = true ]; then
    echo -e "${PURPLE}[PREVIEW MODE - No files will be modified]${NC}"
fi
echo ""

# Check if ImageMagick is installed and determine command
if command -v magick &> /dev/null; then
    MAGICK_CMD="magick"
elif command -v convert &> /dev/null; then
    MAGICK_CMD="convert"
else
    echo -e "${RED}Error: ImageMagick is not installed.${NC}"
    echo "Install it with: brew install imagemagick"
    exit 1
fi

# Resolve script directory so paths work from any CWD
SCRIPT_DIR="$(cd -- "$(dirname "$0")" && pwd)"
BASE_DIR="$SCRIPT_DIR/../assets/images"

# Check if base directory exists
if [ ! -d "$BASE_DIR" ]; then
    echo -e "${RED}Error: $BASE_DIR not found${NC}"
    exit 1
fi

# Create backup directory (skip in preview mode)
if [ "$PREVIEW_MODE" = false ]; then
    BACKUP_DIR="assets/images/backup-$(date +%Y%m%d-%H%M%S)"
    echo -e "${YELLOW}Creating backup at: $BACKUP_DIR${NC}"
    mkdir -p "$BACKUP_DIR"
    cp -r "$BASE_DIR"/* "$BACKUP_DIR/" 2>/dev/null || true
    echo -e "${GREEN}✓ Backup created${NC}"
    # Clear conversion log
    rm -f png_to_jpg_conversions.txt
else
    echo -e "${BLUE}ℹ Backup skipped (preview mode)${NC}"
fi
echo ""

# Function to check if PNG has transparency
# Checks if any pixel actually uses transparency (not just if alpha channel exists)
has_transparency() {
    local file=$1
    # Check if image has alpha channel first
    local has_alpha=$(identify -format "%A" "$file" 2>/dev/null)
    if [[ "$has_alpha" != "Blend" && "$has_alpha" != "True" ]]; then
        return 1  # No alpha channel = no transparency
    fi
    
    # Check if any pixel actually uses transparency
    # Get the minimum alpha value (works for both 8-bit and 16-bit)
    local alpha_min=$(identify -format "%[fx:minima.a]" "$file" 2>/dev/null)
    # If alpha_min is less than 1.0, there's transparency being used
    [[ -n "$alpha_min" ]] && (( $(echo "$alpha_min < 1.0" | bc -l) ))
}

# Function to check if image is already optimized
# Images are considered optimized if they're under the max size for their category
is_optimized() {
    local file=$1
    local max_size=$2
    local file_size=$(stat -f%z "$file" 2>/dev/null || stat -c%s "$file" 2>/dev/null)
    
    # If file size is less than max, assume it's already optimized
    [ "$file_size" -lt "$max_size" ]
}

# Function to optimize images in a folder
optimize_folder() {
    local folder=$1
    local max_width=$2
    local max_size=$3
    local category=$4
    
    if [ ! -d "$BASE_DIR/$folder" ]; then
        echo -e "${BLUE}ℹ No $folder directory found${NC}"
        return
    fi
    
    echo -e "${BLUE}Processing $category images in: $folder/${NC}"
    
    local count=0
    local skipped=0
    local converted=0
    
    # Process all image files in folder (using process substitution to avoid subshell scope issues)
    while IFS= read -r img; do
        filename=$(basename "$img")
        
        # Convert PNG to JPG if no transparency (combine with optimization in one step)
        if [[ $filename == *.png ]]; then
            if ! has_transparency "$img"; then
                local base="${img%.png}"
                local jpg_file="${base}.jpg"
                
                if [ "$PREVIEW_MODE" = true ]; then
                    echo -e "  ${PURPLE}⚙ WOULD convert & optimize: $filename → JPG${NC}"
                    size_before_bytes=$(stat -f%z "$img" 2>/dev/null || stat -c%s "$img" 2>/dev/null)
                    size_before=$(du -h "$img" | cut -f1)
                    size_after_est=$(echo "$size_before_bytes * 0.4 / 1" | bc)
                    size_after_kb=$(echo "$size_after_est / 1024" | bc)
                    savings=$(echo "$size_before_bytes - $size_after_est" | bc)
                    savings_kb=$(echo "$savings / 1024" | bc)
                    echo -e "    Original PNG: ${YELLOW}${size_before}${NC}"
                    echo -e "    Estimated JPG: ${GREEN}~${size_after_kb}KB${NC}"
                    echo -e "    Savings: ${BLUE}-${savings_kb}KB${NC}"
                else
                    echo -e "  ${YELLOW}🔄 Converting & optimizing: $filename → JPG${NC}"
                    size_before_bytes=$(stat -f%z "$img" 2>/dev/null || stat -c%s "$img" 2>/dev/null)
                    size_before=$(du -h "$img" | cut -f1)
                    
                    # Convert + resize + compress in one operation
                    if [ "$MAX_EDGE" -gt 0 ]; then
                        $MAGICK_CMD "$img" -resize "${MAX_EDGE}x${MAX_EDGE}>" -quality "$QUALITY" -strip "$jpg_file"
                    elif [ "$MAX_HEIGHT" -gt 0 ]; then
                        $MAGICK_CMD "$img" -resize "${max_width}x${MAX_HEIGHT}>" -quality "$QUALITY" -strip "$jpg_file"
                    else
                        $MAGICK_CMD "$img" -resize "${max_width}x>" -quality "$QUALITY" -strip "$jpg_file"
                    fi
                    
                    rm "$img"
                    # Log relative path from assets/images for easier reference updates
                    relative_old="${img#$BASE_DIR/}"
                    relative_new="${jpg_file#$BASE_DIR/}"
                    echo "assets/images/$relative_old -> assets/images/$relative_new" >> png_to_jpg_conversions.txt
                    
                    size_after_bytes=$(stat -f%z "$jpg_file" 2>/dev/null || stat -c%s "$jpg_file" 2>/dev/null)
                    size_after=$(du -h "$jpg_file" | cut -f1)
                    savings=$(echo "$size_before_bytes - $size_after_bytes" | bc)
                    savings_kb=$(echo "$savings / 1024" | bc)
                    savings_pct=$(echo "scale=1; $savings * 100 / $size_before_bytes" | bc)
                    echo -e "    Original PNG: ${YELLOW}${size_before}${NC}"
                    echo -e "    New JPG: ${GREEN}${size_after}${NC}"
                    echo -e "    Savings: ${BLUE}-${savings_kb}KB (${savings_pct}%)${NC}"
                fi
                ((converted++))
                ((count++))
                continue
            fi
        fi
        
        # Skip SVGs and small files (likely already optimized)
        if is_optimized "$img" "$max_size"; then
            echo -e "  ${GREEN}✓ Already optimized: $filename${NC}"
            ((skipped++))
            continue
        fi
        
        if [ "$PREVIEW_MODE" = true ]; then
            echo -e "  ${PURPLE}⚙ WOULD optimize: $filename${NC}"
            size_before_bytes=$(stat -f%z "$img" 2>/dev/null || stat -c%s "$img" 2>/dev/null)
            size_before=$(du -h "$img" | cut -f1)
            # Estimate ~60% compression
            size_after_est=$(echo "$size_before_bytes * 0.6 / 1" | bc)
            size_after_kb=$(echo "$size_after_est / 1024" | bc)
            savings=$(echo "$size_before_bytes - $size_after_est" | bc)
            savings_kb=$(echo "$savings / 1024" | bc)
            echo -e "    Original:   ${YELLOW}${size_before}${NC}"
            echo -e "    Estimated:  ${GREEN}~${size_after_kb}KB${NC}"
            echo -e "    Savings:    ${BLUE}-${savings_kb}KB${NC}"
        else
            echo -e "  ${YELLOW}⚙ Optimizing: $filename${NC}"
            size_before_bytes=$(stat -f%z "$img" 2>/dev/null || stat -c%s "$img" 2>/dev/null)
            size_before=$(du -h "$img" | cut -f1)
            
            # Optimize based on type
            if [[ $filename == *.svg ]]; then
                echo -e "    (SVG - skipping conversion)"
            else
                # Resize and compress
                if [ "$MAX_EDGE" -gt 0 ]; then
                    $MAGICK_CMD "$img" -resize "${MAX_EDGE}x${MAX_EDGE}>" -quality "$QUALITY" -strip "$img.tmp"
                elif [ "$MAX_HEIGHT" -gt 0 ]; then
                    $MAGICK_CMD "$img" -resize "${MAX_WIDTH}x${MAX_HEIGHT}>" -quality "$QUALITY" -strip "$img.tmp"
                else
                    $MAGICK_CMD "$img" -resize "${MAX_WIDTH}x>" -quality "$QUALITY" -strip "$img.tmp"
                fi
                mv "$img.tmp" "$img"
            fi
            
            # Get file size after
            size_after_bytes=$(stat -f%z "$img" 2>/dev/null || stat -c%s "$img" 2>/dev/null)
            size_after=$(du -h "$img" | cut -f1)
            savings=$(echo "$size_before_bytes - $size_after_bytes" | bc)
            savings_kb=$(echo "$savings / 1024" | bc)
            savings_pct=$(echo "scale=1; $savings * 100 / $size_before_bytes" | bc)
            echo -e "    Original:  ${YELLOW}${size_before}${NC}"
            echo -e "    New size:  ${GREEN}${size_after}${NC}"
            echo -e "    Savings:   ${BLUE}-${savings_kb}KB (${savings_pct}%)${NC}"
        fi
        ((count++))
    done < <(find "$BASE_DIR/$folder" -maxdepth 1 -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" \))
    
    echo -e "${GREEN}✓ Processed $count new images, skipped $skipped already-optimized"
    if [ $converted -gt 0 ]; then
        echo -e "  Converted $converted PNG→JPG (no transparency)${NC}"
    else
        echo -e "${NC}"
    fi
    echo ""
}

# Process each image category
echo -e "${YELLOW}Starting optimization...${NC}"
echo ""

# Process all subdirectories in assets/images
if [ -n "$TARGET_FOLDER" ]; then
    # Process only the specified folder
    optimize_folder "$TARGET_FOLDER" "1600" "300000" "Target Image"
else
    # Process all folders
    optimize_folder "headers" "2000" "500000" "Header Image"
    optimize_folder "events" "1600" "300000" "Event Image"
    optimize_folder "posters" "1600" "300000" "Poster Image"
    optimize_folder "projects" "1600" "300000" "Project Image"
    optimize_folder "site" "1600" "300000" "Site Image"
    optimize_folder "team" "1200" "200000" "Team Photo"
fi

echo -e "${GREEN}=== Optimization Complete! ===${NC}"
echo ""

if [ "$PREVIEW_MODE" = true ]; then
    echo -e "${PURPLE}[PREVIEW MODE COMPLETE]${NC}"
    echo ""
    echo -e "${YELLOW}To actually optimize the images and create a backup, run:${NC}"
    echo "  bash optimize-images.sh"
    echo ""
else
    echo -e "${YELLOW}Summary:${NC}"
    echo "Images are organized in:"
    echo "  • $BASE_DIR/headers/    (page headers/hero images)"
    echo "  • $BASE_DIR/events/     (event images)"
    echo "  • $BASE_DIR/posters/    (poster images)"
    echo "  • $BASE_DIR/projects/   (project images)"
    echo "  • $BASE_DIR/services/   (service images)"
    echo "  • $BASE_DIR/site/       (site assets)"
    echo "  • $BASE_DIR/team/       (team photos)"
    echo ""
    echo "Your original images are backed up in:"
    echo "  $BACKUP_DIR"
    echo ""
    
    if [ -f png_to_jpg_conversions.txt ]; then
        echo ""
        echo -e "${YELLOW}⚠ PNG→JPG conversions detected!${NC}"
        echo "Update markdown references with:"
        echo "  bash scripts/update-image-refs.sh"
    fi
    echo -e "${GREEN}Use this to see space saved:${NC}"
    echo "  du -sh $BACKUP_DIR $BASE_DIR/*/."
    echo ""
    echo -e "${YELLOW}Next steps:${NC}"
    echo "  • Verify the optimized images look good"
    echo "  • Run again anytime to optimize newly-added images"
    echo "  • Already-optimized images will be skipped automatically"
fi
