---
layout: sketchbook
title: Teaching Sketches
description: "Assignments, prompts, and classroom experiments for using AI in humanities teaching."
css: sketchbook.css
date: 2026-04-01
---

{% assign teaching_posts = site.pages
  | where_exp: "item", "item.dir == page.dir"
  | where_exp: "item", "item.name != 'index.md'"
  | sort: "card_order" %}

{::nomarkdown}
<div class="sketchbook-page-header">
  <h1>Teaching Sketches</h1>
  <p>Assignments, discussion setups, and classroom experiments. The common thread: using AI in situations where critical thinking is the actual point, not an afterthought.</p>
  <span class="section-accent teach"></span>
</div>
{:/nomarkdown}

Each teaching sketch now lives in its own folder with an `index.md` file carrying the metadata for that exercise: title, summary, thumbnail, tags, status, and card order. This page simply gathers those child pages and renders them as cards.

[Browse all sketchbook tags →](/explore/ai-sketchbook/tags/)

{::nomarkdown}
<div class="sketchbook-intro-cards">
{% include card-list.html pages=teaching_posts %}
</div>
{:/nomarkdown}
