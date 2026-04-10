---
layout: sketchbook
title: Research Sketches
description: "Workflow experiments and methodological notes for using AI in humanities research."
css: sketchbook.css
date: 2026-04-01
---

{% assign research_posts = site.pages
  | where_exp: "item", "item.dir == page.dir"
  | where_exp: "item", "item.name != 'index.md'"
  | sort: "card_order" %}

{::nomarkdown}
<div class="sketchbook-page-header">
  <h1>Research Sketches</h1>
  <p>Workflow experiments, analysis techniques, and methodological notes — ways AI has proven useful (and useless) in actual humanities scholarship.</p>
  <span class="section-accent research"></span>
</div>
{:/nomarkdown}

Each research sketch now lives in its own file with metadata for title, summary, thumbnail, tags, status, and card order. This page gathers those pages and renders them as cards.

[Browse all sketchbook tags →](/explore/ai-sketchbook/tags/)

{::nomarkdown}
<div class="sketchbook-intro-cards">
{% include card-list.html pages=research_posts %}
</div>
{:/nomarkdown}


