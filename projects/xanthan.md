---
layout: base
title: Xanthan
description: "Xanthan is Amaranth's open-source Jekyll framework for academic websites. Free hosting, no vendor lock-in, AI-legible structure, and years of classroom use at UNM."
header-image: /assets/images/headers/xanthan-bw.jpg
header-tier: section
header-filter: botanical
header-title: Build for stability and growth
showcase_sites:
  - Campus Histories
  - Metahistory
  - Medieval Elite Marriages
---

The Xanthan framework started as an experiment to create a shared repository for course work. What began modestly grew, through unexpected student interest, into a general framework for aggregating and sustaining student work across semesters—and eventually into Amaranth's open-source web publishing infrastructure for scholars, students, and community partners.
{: .lead}

## A new kind of web publishing
Most academic web publishing advice amounts to picking the least-bad platform. Squarespace if you want it to look decent. WordPress if you want flexibility. Institutional systems if you want to comply. In almost all cases, you trade control and transparency for convenience---and when the platform changes, you adapt or walk away.

Xanthan prioritizes openness and pedagogy. It's built on Jekyll and GitHub Pages: open source, free to host, no subscription. Sites are created from easily accessible and editable plain-text files. The infrastructure is so basic to web fundamentals, it's not going anywhere.

That's not just a technical preference. It's an argument about what digital humanities work should be able to promise its audiences---that a site built today won't disappear after a security patch, or move behind a higher paywall, or that changing platforms means starting over with your content.


## What Xanthan offers
Three templates (Portfolio, Class Project, ScrollStory) set up the core files for you. They require nothing beyond a GitHub account to publish to a working website. As much work as we've put into the code, we've put into the documentation at [xanthan-web.github.io](https://xanthan-web.github.io)---written for people who are brand new to these tools and processes.

The next test is AI legibility. We've been deliberately designing Xanthan so that AI assistants can understand and modify it precisely. That reflects a broader argument about humanities web publishing: the scholar should hold editorial authority while AI handles technical translation, not the other way around. The same structured, legible design also makes Xanthan sites useful platforms for AI-assisted research, where humanists need infrastructure they understand, control, and can document.


## Built with Xanthan
Every semester we add a handful of new projects to our portfolio. Here are a few recent highlights.

{% assign showcase = "" | split: "" %}
{% for t in page.showcase_sites %}
  {% assign match = site.data.websites | where: "title", t | first %}
  {% if match %}{% assign showcase = showcase | push: match %}{% endif %}
{% endfor %}
{% include card-grid.html cards=showcase title-only=true gallery=true %}

<p class="mt-3 text-end"><a href="/websites/gallery" class="btn-cta">See more in the gallery →</a></p>


## Try it!

The full Xanthan documentation covers everything from setting up your first site in 10 minutes to building a scroll-driven narrative with a custom theme. It's designed for people who haven't done this before---and for AI assistants who can do the technical work while you make the decisions.

<p style="text-align: right"><a href="https://xanthan-web.github.io" class="btn-cta" target="_blank">Make a website with Xanthan →</a></p>
