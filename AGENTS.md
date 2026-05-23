# Amaranth Project Guidelines

## What is Amaranth?
Amaranth is UNM's Digital Humanities Studio emphasizing public humanities scholarship, student/faculty research support, and community engagement. The website serves as both a resource hub and promotional site for the studio's services.

**Primary maintainers:** Fred Gibbs (director) + graduate student studio manager

**Target audiences:**
- Faculty creating websites for research projects or groups
- Students building personal portfolios
- Instructors running multi-semester class projects
- Anyone interested in digital humanities collaboration

## Tech Stack
- **Static site generator:** Jekyll (GitHub Pages compatible)
- **CSS framework:** Bootstrap
- **Hosting:** GitHub Pages (amaranth-unm.github.io)
- **Related project:** [Xanthan](https://xanthan-web.github.io) - the template system Amaranth helps people use

## Running Locally
```bash
bundle exec jekyll serve
```
Then visit http://localhost:4000

## Project Structure

```
├── _config.yml          # Site configuration
├── _data/               # Data files (YAML)
│   ├── events.yml       # Events listing
│   ├── team.yml         # Team member info
│   └── top-nav.yml      # Navigation structure
├── _includes/           # Reusable components
├── _layouts/            # Page templates (base.html)
├── assets/images/       # All images, organized by type
│   ├── headers/         # Page header/hero images (2000px max)
│   ├── events/          # Event images (1600px max)
│   ├── posters/         # Poster images (1600px max)
│   ├── projects/        # Project images (1600px max)
│   ├── site/            # General site assets (1600px max)
│   └── team/            # Team photos (1200px max)
├── scripts/             # Utility scripts
│   ├── optimize-images.sh
│   └── update-image-refs.sh
└── [content folders]    # websites/, audio/, 3d-printing/, equipment/, etc.
```

## Content Guidelines

### Tone & Voice
- **Inspirational and approachable** - we want to excite people about possibilities
- **Avoid sycophantic language** - no excessive praise or over-the-top enthusiasm
- **Clear and practical** - this is for people learning, so clarity beats cleverness
- **Encouraging but honest** - acknowledge that things can be learned without overpromising ease

### Writing for the Audience
Remember readers may be:
- Unfamiliar with web technologies
- Nervous about trying something new
- Looking for quick answers to specific questions
- Deciding whether Amaranth can help them

## File Naming Conventions

### Markdown Files
- Use lowercase with hyphens: `class-projects.md`, `oral-histories.md`
- Keep names short but descriptive
- Match URL structure expectations

### Images
- Use lowercase with hyphens: `poster-printer.jpg`, `vr-headsets.jpg`
- Prefer JPG for photos, PNG for graphics with transparency, SVG for icons
- Place in appropriate `assets/images/[type]/` folder
- Run `bash scripts/optimize-images.sh --preview` before committing large images

### Front Matter
Standard page front matter:
```yaml
---
title: Page Title
layout: base
date: YYYY-MM-DD
header-image: /assets/images/headers/image-name.jpg
header-height: 60vh  # optional, defaults vary
---
```

## Image Management

### Adding New Images
1. Place in the correct `assets/images/[type]/` folder
2. Use descriptive, hyphenated lowercase names
3. Preview optimization: `bash scripts/optimize-images.sh --preview`
4. Run optimization: `bash scripts/optimize-images.sh`
5. Verify images display correctly locally

### Size Guidelines
| Type | Max Width | Use Case |
|------|-----------|----------|
| headers | 2000px | Page heroes |
| events/posters/projects/services/site | 1600px | General content |
| team | 1200px | Portraits |

## Navigation
Navigation is defined in `_data/top-nav.yml`. When adding new pages:
1. Create the markdown file in the appropriate folder
2. Add entry to `top-nav.yml` if it should appear in nav
3. Use `disabled: true` for placeholder/coming-soon items

## Common Tasks

### Adding a new page
1. Create `folder/page-name.md` with proper front matter
2. Add to `_data/top-nav.yml` if needed
3. Add header image to `assets/images/headers/` if using one

### Adding team members
Edit `_data/team.yml` and add photo to `assets/images/team/`

### Adding events
Edit `_data/events.yml` and add image to `assets/images/events/`

## Important Reminders
- This site should be maintainable by graduate students learning web tech
- Documentation and standardization are priorities
- When in doubt, favor clarity and consistency over cleverness
- Always test locally before pushing changes
- Xanthan (xanthan-web.github.io) is the separate template project we help people use
