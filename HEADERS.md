# Header System Reference

All pages with a `header-image` in front matter are automatically routed through `_includes/header-studio.html`. There is no separate `header-style` parameter — every page uses the same system.

---

## Front Matter Parameters

```yaml
header-image:    /assets/images/headers/my-image.jpg   # required — triggers header
header-title:    My Page Title                          # shown in header
header-tier:     section                               # hero | section | banner (default: hero)
header-filter:   woodcut                               # botanical | woodcut | etching | photo (default: photo)
header-height:   50vh                                  # overrides CSS default (optional)
header-position: "left center"                         # CSS background-position (default: center right)
header-opacity:  0.35                                  # overrides default opacity for the bg image (optional)
```

### Hero-only parameters
```yaml
header-eyebrow:  small label above title               # Space Mono, all caps, cherry red
header-divider:  text between decorative lines         # sits between two horizontal rules
header-subtitle: paragraph below title                 # light weight, muted
```

---

## Tiers

Three tiers control height and typographic scale. Heights are set in CSS (not Liquid) and only overridden when `header-height` is explicitly set.

| Tier      | Default height | Background opacity | h1 size             | Use for         |
|-----------|---------------|--------------------|---------------------|-----------------|
| `hero`    | 100vh         | 0.28               | clamp(4–6.5rem)     | Homepage        |
| `section` | 60vh          | 0.18               | clamp(2.2–3.5rem)   | Section indexes |
| `banner`  | 22vh          | 0.10               | clamp(1.3–1.8rem)   | Interior pages  |

**Banner tier** uses Space Grotesk (not IM Fell English) for h1 — smaller, more utilitarian.

---

## Filters

### `botanical`
For line-art engravings with dark lines on a **white or near-white background** — botanical illustrations, fine hatching, pen drawings, woodblock prints on bright white paper.

**Effect pipeline:** `invert(1)` → dark lines become light → `sepia + hue-rotate(320deg) + saturate` tints them red → `mix-blend-mode: screen` makes the (now black/dark) background transparent, so only the glowing red lines show.

**Requires:** The image must have dark marks on a light background. On a dark-background image, invert will flip it wrong.

```css
.header-studio-bg--botanical {
  filter: invert(1) sepia(0.6) hue-rotate(320deg) saturate(2.5);
  mix-blend-mode: screen;
}
```

**Tuning:**
- `saturate` — higher = more vivid red tint (try 2–4)
- `sepia` — higher = warmer/more orange; lower = cooler
- `hue-rotate` — 310–330deg = red; push toward 340+ for magenta

Opacity is not set here — the `screen` blend mode controls apparent brightness through the image itself.

---

### `woodcut`
For early modern prints, woodblock prints, engravings on **cream or off-white paper** where you want to preserve the tonal warmth of the paper rather than inverting it.

**Effect pipeline:** `grayscale(1)` neutralizes any color → `sepia + hue-rotate + saturate` applies red tint → sits on dark background at reduced opacity via `mix-blend-mode: normal`. No inversion — the woodcut reads as a darkened, reddish version of itself.

```css
.header-studio-bg--woodcut {
  filter: grayscale(1) sepia(1) hue-rotate(320deg) saturate(3) brightness(0.7);
  mix-blend-mode: normal;
  opacity: 0.5;            /* hero */
}
.header-studio--section .header-studio-bg--woodcut { opacity: 0.4; }
.header-studio--banner  .header-studio-bg--woodcut { opacity: 0.25; }
```

**Tuning:**
- `brightness(0.7)` — controls overall darkness before opacity; lower = darker image
- `opacity` — controls how much the dark background shows through; lower = more background, image recedes
- `hue-rotate` — 310–330 = red; pushing lower (300–310) adds more magenta
- `saturate` — higher = deeper red cast

**Why not botanical here?** Cream paper doesn't invert cleanly — it becomes a dim blue-grey haze rather than transparent. The contrast(3) pre-boost in the original woodcut version was meant to push cream → white before inverting; the current approach sidesteps this entirely by not inverting.

---

### `etching`
For **color photos** that you want to read as a bold graphic silhouette rather than a photograph. Produces hard-edged black-and-white shapes (stencil aesthetic), not fine lines. Different visual register from botanical/woodcut.

**Effect pipeline:** `grayscale → pre-brighten → contrast(5)` acts as a threshold, collapsing continuous tone into hard black/white → `post-darken → invert → sepia + hue-rotate → saturate` tints red → `mix-blend-mode: screen` makes dark areas transparent.

```css
.header-studio-bg--etching {
  filter: grayscale(1) brightness(1.3) contrast(5) brightness(0.55) invert(1) sepia(0.5) hue-rotate(320deg) saturate(3);
  mix-blend-mode: screen;
}
.header-studio--section .header-studio-bg--etching { opacity: 0.40; }
.header-studio--banner  .header-studio-bg--etching { opacity: 0.25; }
```

**Tuning:**
- `brightness(1.3)` (pre-contrast) — raise to reveal more detail above the threshold; lower to push more areas to black
- `contrast(5)` — the threshold step; increase (6–8) for harder edges, decrease (3–4) for softer
- `brightness(0.55)` (post-contrast) — controls darkness of the inverted result

**Note:** If you want a photo to produce *fine lines* (not bold shapes), etching won't do it. Instead, pre-process the image in Photoshop/GIMP (threshold + edge-detection, or run through an AI line-art tool) and then use `botanical`.

---

### `photo`
For **color photos** kept photographic — slightly darkened and desaturated. No inversion, no tinting. Use when the image content itself is what matters (a specific place, a specific person, a colorful historical print).

```css
.header-studio-bg--photo {
  filter: saturate(0.9) brightness(0.75);
  mix-blend-mode: normal;
  opacity: 0.75;           /* hero */
}
.header-studio--section .header-studio-bg--photo { opacity: 0.60; }
.header-studio--banner  .header-studio-bg--photo { opacity: 0.40; }
```

**Tuning:**
- `opacity` — primary control; raise if image looks too faint, lower if text becomes hard to read
- `brightness` — secondary; `0.75` is a good baseline for most photos
- `saturate` — `0.9` is a subtle desaturation; drop to `0.7` for a more muted look, raise to `1.0` for full color

**Note on using colorful historical prints:** Full-color images (Japanese woodblock prints, illuminated manuscripts, etc.) introduce palettes that don't exist elsewhere in the design. Use sparingly and intentionally — one or two pages where warmth and color are narratively appropriate. Not as a default.

---

## Structural Components

These are always present regardless of filter and can be tuned in CSS:

| Class | What it does | Key CSS |
|-------|-------------|---------|
| `.header-studio-bg` | The background image div | `opacity`, `background-position` |
| `.header-studio-grid` | Subtle white grid overlay | `opacity: 0.025` (hero), lower at smaller tiers |
| `.header-studio-bar` | 4px cherry vertical bar at left edge | `background: var(--unm-cherry)`, `width` |
| `.header-studio-content` | Title text container | `border-left: 2px solid rgba(186,12,47,0.4)`, `padding`, `margin-left` |
| `::after` pseudo-element | Gradient fade at bottom | `height: 350px` (hero), less at smaller tiers; fades to `#2a2d31` |

---

## Common Tweaks

**Image too faint:** Increase `opacity` on `.header-studio-bg--[filter]` for the relevant tier, or increase `brightness` in the filter.

**Image too dominant (text hard to read):** Decrease `opacity`, or decrease `brightness`.

**Image focal point in wrong place:** Set `header-position: "left center"` (or any CSS `background-position` value) in front matter.

**Section header too tall/short:** Set `header-height: 45vh` (or any vh/px value) in front matter. This applies inline and overrides the CSS default.

**Opacity for one specific page only:** Set `header-opacity: 0.25` in front matter — this applies inline to the bg div, overriding the CSS default for that page only.

---

## Where Things Live

| File | Role |
|------|------|
| `_includes/header-studio.html` | Liquid template — reads front matter, outputs HTML |
| `_layouts/base.html` | Routes any page with `header-image` to the studio include |
| `assets/css/amaranth-unm.css` | All header CSS — tiers (~line 979), filters (~line 1164) |
