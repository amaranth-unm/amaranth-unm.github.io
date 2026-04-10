---
layout: sketchbook
title: Sketchbook Tags
description: "Browse AI Sketchbook posts by tag."
css: sketchbook.css
date: 2026-04-09
permalink: /explore/ai-sketchbook/tags/
---

{% assign tag_pages = site.pages
  | where_exp: "item", "item.url contains '/explore/ai-sketchbook/'"
  | where_exp: "item", "item.name == 'index.md'"
  | where_exp: "item", "item.tags"
  | sort: "title" %}

{% assign all_tags = "" | split: "" %}
{% for p in tag_pages %}
  {% for t in p.tags %}
    {% assign all_tags = all_tags | push: t %}
  {% endfor %}
{% endfor %}
{% assign all_tags = all_tags | uniq | sort %}

{::nomarkdown}
<div class="sketchbook-page-header">
  <h1>Sketchbook Tags</h1>
  <p>A way to browse the AI Sketchbook laterally rather than by section. Useful when the pattern you care about is something like writing, fabrication, archives, or source evaluation rather than whether a sketch started in teaching or research.</p>
  <span class="section-accent default"></span>
</div>
{:/nomarkdown}

Below are the tags currently in use across sketchbook post pages. As the sketchbook grows, this should become a more useful way to move across related ideas.

{::nomarkdown}
<div class="sketchbook-tag-list" id="sketchbook-tag-list">
  <a class="sketchbook-tag-badge active" href="{{ '/explore/ai-sketchbook/tags/' | relative_url }}">All</a>
  {% for tag in all_tags %}
    {% assign tag_count = tag_pages | where_exp: "p", "p.tags contains tag" | size %}
    <a class="sketchbook-tag-badge" href="{{ '/explore/ai-sketchbook/tags/' | relative_url }}?tag={{ tag | url_encode }}" data-tag="{{ tag | downcase }}">{{ tag }} <span class="tag-count">{{ tag_count }}</span></a>
  {% endfor %}
</div>

<p class="sketchbook-tag-summary" id="sketchbook-tag-summary">Showing all sketchbook posts with tags.</p>

<div class="sketchbook-intro-cards" id="sketchbook-tag-cards">
{% include card-list.html pages=tag_pages tag-data=true %}
</div>

<p class="sketchbook-tag-empty" id="sketchbook-tag-empty" hidden>No sketchbook posts match this tag yet.</p>
{:/nomarkdown}

<script>
  (function () {
    const params = new URLSearchParams(window.location.search);
    const selectedTag = (params.get('tag') || '').trim().toLowerCase();

    const cards = Array.from(document.querySelectorAll('.sketch-tag-card'));
    const badges = Array.from(document.querySelectorAll('.sketchbook-tag-badge[data-tag]'));
    const clear = document.querySelector('.sketchbook-tag-badge:not([data-tag])');
    const summary = document.getElementById('sketchbook-tag-summary');
    const empty = document.getElementById('sketchbook-tag-empty');

    let shown = 0;
    let activeLabel = selectedTag;

    cards.forEach((card) => {
      const tags = (card.dataset.tags || '').split('|').map((tag) => tag.trim()).filter(Boolean);
      const match = selectedTag ? tags.includes(selectedTag) : true;
      card.style.display = match ? '' : 'none';
      if (match) shown += 1;
    });

    if (selectedTag) {
      badges.forEach((badge) => {
        if (badge.dataset.tag === selectedTag) {
          badge.classList.add('active');
          activeLabel = badge.textContent.trim();
        }
      });
      if (clear) clear.classList.remove('active');
      if (summary) {
        summary.textContent = shown === 1
          ? 'Showing 1 sketchbook post for this tag.'
          : `Showing ${shown} sketchbook posts for this tag.`;
      }
    } else {
      if (clear) clear.classList.add('active');
    }

    if (selectedTag && shown === 0) {
      if (empty) empty.hidden = false;
      if (summary) summary.textContent = 'No sketchbook posts match this tag.';
    }
  })();
</script>