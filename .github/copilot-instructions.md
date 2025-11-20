# Copilot Instructions for Amaranth

## Project Overview

**Amaranth** is a Digital Humanities and Public Scholarship Studio website at UNM, built as a Jekyll static site deployed on GitHub Pages. It serves as a resource hub for students and faculty working with digital tools (3D printing, audio recording, website building) and provides documentation, equipment guides, and event information.

This site is built on **Xanthan** (sister repo in this workspace), a reusable Jekyll framework that provides UI components for digital storytelling, including scrolly-telling features, background images with text overlays, carousels, and interactive maps.

## Architecture

### Dual-Repo Workspace Structure
- **amaranth-unm.github.io/**: Production site with content about studio equipment, processes, events
- **xanthan/**: Component library and documentation/template site that Amaranth borrows from

Both sites share nearly identical `_includes/` components (figure.html, card-grid.html, scrollybox/, etc.) with minor path-handling differences.

### Key Architectural Patterns

**1. Component Reuse via Jekyll Includes**
- Shared components in `_includes/`: `figure.html`, `card-grid.html`, `carousel.html`, `jumbotron.html`, `juxtapose.html`, etc.
- Scrolly-telling components in `_includes/scrollybox/`: `bg.html`, `bg-sticky.html`, `bg-switch.html`, `bg-multi-long.html`
- Each include accepts parameters passed from page frontmatter or inline

**2. Image Path Resolution**
- `_includes/image-path.html` centralizes path logic
- Amaranth: Simple baseurl prepending for absolute paths (`/assets/images/...`)
- Xanthan: More complex logic handling external URLs, relative paths, and page-specific directories
- Relative image paths resolve from `page.dir` unless overridden with `page-dir` parameter

**3. Navigation via YAML Data Files**
- `_data/top-nav.yml` defines multi-level dropdown menus
- `_includes/nav-top.html` renders Bootstrap-based navbar from this data
- Support for nested `items:` arrays and optional `divider: true` entries

**4. Content Organization**
- Content pages in topical folders (`audio/`, `3d-printing/`, `websites/`, `equipment/`)
- Each folder can have an `index.md` landing page and `images/` subdirectory
- Page frontmatter controls layout, header images, and component behavior

## Development Workflows

### Local Development
**Docker Compose (Xanthan only):**
```bash
cd /path/to/xanthan
docker-compose up
# Site serves at localhost:4000
```

**Native Ruby/Jekyll (both sites):**
```bash
bundle install
bundle exec jekyll serve
# Amaranth: http://localhost:4000
# Xanthan: http://localhost:4000/xanthan/
```

### Deployment
- Both sites use GitHub Pages with GitHub Actions
- Push to `main` branch triggers automatic build and deploy
- Amaranth deploys to root domain, Xanthan to `/xanthan/` subpath

### Testing Changes
- Save `.md` files and Jekyll auto-regenerates (watch mode with `-w`)
- Check browser at localhost:4000 for immediate feedback
- Images must be in correct relative location or include won't render

## Component Usage Patterns

### Cards for Navigation
```yaml
# In page frontmatter
cards:
  - title: "Page Title"
    image: "/assets/images/card.png"  # Amaranth: absolute from root
    summary: "Description text"
    link: "relative/path"
```
```markdown
{% include card-grid.html %}
```

### Figures with Captions
```markdown
{% include figure.html
  class="left|right|center"
  width="45%"
  caption="Description with **markdown**"
  image-path="images/local.jpg"  # or "/assets/images/global.jpg"
  source-url="https://example.com"  # optional
%}
```

### Scrolly-Telling Backgrounds
```markdown
{% include scrollybox/bg.html
  height="100vh"
  image-path="/assets/images/backgrounds/image.jpg"
  above-box-space="50vh"  # optional, for text box
  below-box-space="50vh"  # optional
  box-content="
  Scrolling text content here.
  
  ### Use Markdown Headers
  Escape quotes with backslash: \"quoted text\"
  "
%}
```

### Header Images
```yaml
# In page frontmatter
header-image: assets/images/site/header.png  # Amaranth style
header-image: /assets/images/header.jpg      # Xanthan style (absolute)
header-height: 60vh
header-position: center  # CSS background-position value
```

## Project-Specific Conventions

### Image Paths
- **Amaranth**: Mix of absolute (`/assets/images/`) and relative (`images/`) paths
- **Xanthan**: Prefers absolute paths from root or relative to page directory
- Always test image rendering locally before pushing

### Frontmatter Requirements
Every `.md` page MUST have:
```yaml
---
layout: base  # or scrollstory, map, left-nav, etc.
title: Page Title
date: YYYY-MM-DD  # used for sorting/changelog
---
```

### CSS Customization
- Base styles: `assets/css/main.css` (or equivalent)
- Scrollstory-specific: `assets/css/scrollstory.css` (Xanthan)
- Background effects: `assets/css/backgrounds.css`

### Data-Driven Content
- Events: `_data/events.yml` → rendered on `/events` page
- Team members: `_data/team.yml` → loop in `about.md`
- Navigation: `_data/top-nav.yml` → multi-level dropdowns

## Common Patterns

### Adding a New Content Page
1. Create `folder-name/page-name.md` with required frontmatter
2. Add images to `folder-name/images/` if using relative paths
3. Update `_data/top-nav.yml` to add navigation link
4. Test locally before pushing

### Creating a New Scrollstory
1. Use `layout: scrollstory` in frontmatter
2. Build narrative with `scrollybox/bg.html` or `bg-sticky.html` includes
3. Place images in `assets/images/backgrounds/` or story-specific folder
4. Reference Xanthan's `scrollstories/forest/`, `scrollstories/sapling/` examples

### Updating Navigation
Edit `_data/top-nav.yml`:
```yaml
- title: "Section Name"
  items:
    - title: "Sub-page"
      url: "/folder/page"
    - divider: true  # optional horizontal line
    - title: "Another Sub-page"
      url: "/folder/other"
      disabled: true  # optional, grays out link
```

## Critical Files
- `_config.yml`: Site title, baseurl, repository settings
- `_layouts/base.html`: Primary page template
- `_includes/nav-top.html`: Bootstrap navbar rendering
- `_includes/image-path.html`: Image URL resolution logic
- `Gemfile`: Always use `gem 'github-pages'` for GitHub Pages compatibility

## Debugging Tips
- **Images not showing**: Check path (absolute vs relative) and verify file exists
- **Includes not rendering**: Validate YAML syntax, check required parameters
- **Navbar changes not appearing**: Confirm `_data/top-nav.yml` syntax, rebuild with `Ctrl+C` and `jekyll serve`
- **Liquid errors**: Usually missing or misspelled variables in frontmatter

## Integration Points
- **GitHub Pages**: Automatic deployment on push to `main`
- **Bootstrap 5**: Used for responsive grid, navbar, cards
- **Leaflet.js**: Map rendering (Xanthan `map.md`)
- **Juxtapose.js**: Image comparison slider
- **Google Analytics**: Enabled when `site.analytics_id` set and `jekyll.environment == 'production'`

## References
- Jekyll Liquid documentation: Core templating syntax
- Bootstrap 5 docs: Card, navbar, grid components
- GitHub Pages docs: Deployment and build process
- Xanthan guides: `/guides/getting-started.md`, `/guides/understanding-pages.md`
