# Image Optimization Guide

This guide helps you optimize images for the Amaranth website to improve loading times.

## Why Optimize Images?
Large image files (5-6MB) significantly slow down page loading. Optimized images:
- Load 10-20x faster
- Use less bandwidth
- Improve user experience on mobile devices
- Improve SEO rankings

## Installation

### Install ImageMagick

**macOS:**
```bash
brew install imagemagick
```

**macOS 12 (Monterey) - If you encounter libraw checksum errors:**
```bash
# Install ImageMagick from pre-built binary instead
curl -O https://imagemagick.org/archive/binaries/ImageMagick-arm64-apple-darwin20.1.0.tar.gz
sudo tar xzf ImageMagick-arm64-apple-darwin20.1.0.tar.gz -C /opt/
export PATH="/opt/ImageMagick-7.1.1/bin:$PATH"
# Add to ~/.bash_profile or ~/.zshrc to make permanent
```


**Windows:**
1. Download from [imagemagick.org/script/download.php](https://imagemagick.org/script/download.php)
2. Run the installer
3. Use Git Bash or WSL to run the script

Verify installation:
```bash
convert --version
```

## Using the Optimization Script

### Step 1: Preview First (Recommended)
From the project root directory, always preview changes first:

```bash
bash scripts/optimize-images.sh --preview
```

This shows what would be optimized **without modifying any files**. Review the output to ensure the estimated savings look reasonable.

### Step 2: Run the Optimization

Once you're confident about the changes:

```bash
bash scripts/optimize-images.sh
```

The script will:
- Create a timestamped backup of your original images
- Process images in-place within their folders:
   - `assets/images/headers/` - Page headers/hero images (2000px max width)
   - `assets/images/events/` - Event images (1600px max width)
   - `assets/images/posters/` - Poster images (1600px max width)
   - `assets/images/projects/` - Project images (1600px max width)
   - `assets/images/services/` - Service images (1600px max width)
   - `assets/images/site/` - Site assets (1600px max width)
   - `assets/images/team/` - Team photos (1200px max width)
- Automatically skip already-optimized images
- Show before/after file sizes
- Available folders for `--folder`: `headers`, `events`, `posters`, `projects`, `services`, `site`, `team`


### Step 3: Verify Results
Review the output summary showing how much space was saved. The script displays:
- Files that were optimized (with size reduction)
- Files that were already optimized and skipped

### Step 4: Test Your Site

```bash
bundle exec jekyll serve
```

Visit http://localhost:4000 and verify all images display correctly. Optimize quality if needed (see troubleshooting).

### Step 5: Keep or Delete Backup

Your originals are safely backed up in `assets/images/backup-TIMESTAMP/`. You can:
- Keep the backup for a few days to ensure everything works on the live site
- Delete once you've confirmed everything works: `rm -rf assets/images/backup-*`

## Quick Reference

### Image Size Guidelines

| Image Type | Max Width | Quality | Use Case |
|------------|-----------|---------|----------|
| Headers | 2000px | 85% | Page headers / hero images |
| Events/Posters/Projects/Services/Site | 1600px | 85% | General content, hero assets |
| Team | 1200px | 85% | Team member portraits |

### Common Commands

**Check image dimensions:**
```bash
identify -format "%wx%h %f\n" *.png
```

**Check file sizes:**
```bash
du -sh assets/images/*/*.{png,jpg}
```

**Manually resize a single image:**
```bash
convert input.png -resize '1200x>' -quality 85 output.png
```

## Troubleshooting

**"convert: command not found"**
- ImageMagick is not installed. Follow installation instructions above.

**I want to test the script without modifying files**
- Use the preview mode: `./scripts/optimize-images.sh --preview`
- Shows exactly what would be optimized without any changes

**Images look blurry after optimization**
- Restore originals from backup: `cp -r assets/images/backup-TIMESTAMP/* assets/images/`
- Re-run with higher quality, e.g. `./scripts/optimize-images.sh --quality 90`

**Script skipped my images**
- The script automatically skips images that are already optimized (based on file size thresholds)
- If you need to re-optimize, delete the optimized version and restore from backup: `cp assets/images/backup-TIMESTAMP/[folder]/*.png assets/images/[folder]/`

**I need to restore original images**
- Your originals are safely backed up: `cp -r assets/images/backup-TIMESTAMP/* assets/images/`

**Script fails on Windows**
- Use Git Bash or Windows Subsystem for Linux (WSL)
- Or use ImageMagick through PowerShell with Windows paths

## Best Practices

1. **Always preview before optimizing:**
   - Run `./scripts/optimize-images.sh --preview` first
   - Review the output to ensure reasonable space savings
   - Then run `./scripts/optimize-images.sh` to actually optimize

2. **Before adding new images:**
   - Crop to remove unnecessary content
   - Use appropriate dimensions (don't upload 4000px images if you only display them at 800px)
   - Use JPG for photos, PNG for graphics with transparency
   - The script will automatically detect and skip already-optimized images

3. **File formats:**
   - JPG: Photos, complex images (smaller file size)
   - PNG: Graphics, logos, images with transparency
   - SVG: Icons, simple graphics (scalable, tiny file size)

4. **Regular maintenance:**
   - Run the optimization script quarterly for any newly-added images
   - Already-optimized images are skipped automatically
   - Check for unused images: `git ls-files assets/images/ | while read f; do grep -rq "$(basename $f)" . || echo "Unused: $f"; done`

## Questions?

Contact the Amaranth team or open an issue on GitHub.
