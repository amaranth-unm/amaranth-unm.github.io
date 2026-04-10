---
layout: sketchbook
title: Generate 3D Prints from 2D Drawings
description: "Creating a scale model of an IUD from the 1970s."
summary: "AI can transform an image into a 3D printable file, adding another perspective for understanding the experiences of historical subjects."
thumbnail: "images/meshy-screenshot.jpg"
css: sketchbook.css
date: 2026-04-09
status: tested
tags:
  - 3D printing
  - material culture
  - tactile
card_order: 10
---

{::nomarkdown}
<div class="sketchbook-page-header sketchbook-post">
  <h1>Generate 3D Prints from 2D Drawings</h1>
  <p>AI can transform an image into a 3D printable file, adding another perspective for understanding the experiences of historical subjects.</p>
  <span class="section-accent teach"></span>
  <div class="sketchbook-post-meta">
    <span class="sketch-tag {{ page.status }}">{{ page.status }}</span>
    {% for tag in page.tags %}<a class="sketch-tag topic" href="{{ '/explore/ai-sketchbook/tags/' | relative_url }}?tag={{ tag | url_encode }}">{{ tag }}</a>{% endfor %}
  </div>
</div>
{:/nomarkdown}

History Doctoral Candidate Edrea Mendoza researches public health sex education initiatives in Mexico in the 1970s. She found a drawing of IUDs manufactured in Mexico in a four year period during that decade. These IUDs represented a larger push by the government for population control. Edrea approached me with the idea that if she could get 3D replicas of the IUDs then she would be able to get another view of the history of these devices and women's experience with them. It's one thing to see a line drawing but an entirely different kind of experience to hold a replica in your palm and imagine its use. 

The web app [Meshy.ai](https://www.meshy.ai/) uses AI machine learning to generate 3D-printable files from 2D images. Previously, I had played with Meshy with varying success. High resolution photographs of museum objects often came through very distorted on Meshy, even when using the option to generate from multiple image files. However, when allowed to invent based on a line drawing, Meshy produced quite accurate representations. 

For Meshy.ai, the prompt is simply uploading a photo. 

## Sample Prompt

{::nomarkdown}
<div class="sketch-prompt">
  <span class="sketch-prompt-label">image uploaded to Meshy.ai</span>
  {% include figure.html image-path="images/meshy-screenshot.jpg" alt="Screenshot of IUD drawing uploaded in Meshy" caption="" %}
</div>
{:/nomarkdown}

## Research Potential

When historians present their findings, they often include images and then during lectures display images in Power Point slides. Sometimes an image seems only implicitly connected to the main content and other times the image unlocks a deeper understanding. Examples like these IUDs offer us the chance to imagine how the tactile might one day occupy the same status as the visual in public-facing research. AI-assisted generation of 3D printable files dramatically lowers the entry barriers for adding tactile elements to history lectures. Nowadays, a decent 3D printer costs less than $500 and as of this writing Meshy offers all the features used in this project at no cost.

## Caveats

The AI will sometimes attempt to 'correct' what it sees as imperfections in an image file. A good example of this is when we tried to generate a 3D file from a 2D drawing of a [Middleton Cross](https://commons.wikimedia.org/wiki/File:Middleton_cross.gif).

{% include figure.html
  class="left"
  width="60%"
  caption="Screenshot of what Meshy.ai produced for a Middleton Cross."
  image-path="images/meshy-middleton.jpg"
%}