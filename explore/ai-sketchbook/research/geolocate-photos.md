---
layout: sketchbook
title: Photos to Map Pins
description: "A workflow experiment in vibe coding a website to display 200 geolocated photos of street cats."
summary: "If you take dozens of photos during a research trip it now takes less than an hour to create map pins for them."
thumbnail: "images/marrakech-thumbnail.jpg"
css: sketchbook.css
date: 2026-04-09
status: tested
tags:
  - vibe coding
  - maps
  - agentic AI
card_order: 10
---

{::nomarkdown}
<div class="sketchbook-page-header sketchbook-post">
  <h1>Photos to Map Pins</h1>
  <p>A workflow experiment in vibe coding a website to display 200 geolocated photos of street cats.</p>
  <span class="section-accent teach"></span>
  <div class="sketchbook-post-meta">
    <span class="sketch-tag {{ page.status }}">{{ page.status }}</span>
    {% for tag in page.tags %}<a class="sketch-tag topic" href="{{ '/explore/ai-sketchbook/tags/' | relative_url }}?tag={{ tag | url_encode }}">{{ tag }}</a>{% endfor %}
  </div>
</div>
{:/nomarkdown}

The process described in this sketchbook entry resulted in the website [Cats of Marrakech](https://jeseyfried.github.io/cats-of-marrakech/). It took less than an hour from the time of downloading the images to my laptop to the creation of a map with clickable pins.

For Spring Break, I traveled to Marrakech. As my travel buddy and I walked around the medina, I saw cats everywhere and couldn’t stop myself from taking pictures of them all. In the end, I had over 200 photos of cats. Since I had turned on the feature in my phone's Camera app to include my location as I took photos, I had GPS coordinates in the metadata for each of the photos. 

In my work designing websites using [Xanthan](https://xanthan-web.github.io/) templates for GitHub Pages, I had experimented with the AI agent Copilot. Copilot allows users to type in their idea for a webpage and then it writes the code directly into the necessary files. After I copied the photos into a new folder in assets/images within my GitHub repository, Copilot was able to create all the code necessary for making the cat photos into pins on the map.

## Sample Prompt

{::nomarkdown}
<div class="sketch-prompt">
  <span class="sketch-prompt-label">prompt to give to Copilot</span>
  Please create a new YML file in the _data folder that lists each the images in assets/images. The YML file should include geographic location extracted from the metadata of each image. Then edit map.html so that the map uses the newly created YML file. The overall goal is to have a pin on the map for each of the photos, and when a user clicks on the pin, the image appears.
</div>
{:/nomarkdown}

## Research Potential

- Expanding understandings of human geography.
- Reconstruction of pilgrimage journeys.
- Experimenting with point of view and perspective.
- Quickly capturing histories of urban development.
- Transferring research findings into a public facing format.

## Caveats

Geolocation data features on phones can sometimes be less exact at the street level. Some photos taken inside buildings might have pins on the map placed across the street. 