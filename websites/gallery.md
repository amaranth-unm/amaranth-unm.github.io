---
layout: base
title: Gallery
date: 2026-01-30
description: "Examples of student and faculty websites built with Amaranth and Xanthan at UNM. Collaborative class projects, portfolios, ScrollStories, and research sites."
header-image: /assets/images/headers/gallery.webp
header-tier: section
header-filter: photo
header-position: center 60%
header-title: "Website Gallery"
---

## What gets built here

Below are a few examples of websites built with Amaranth and [Xanthan templates](https://xanthan-web.github.io). They show the range of work that can live well on the open web: class projects, portfolios, ScrollStories, workshop proceedings, and public research. [Get in touch](/collaborate) if you have a project taking shape.


{% assign sites = site.data.websites | where: "featured", true | sort: "display-order" %}
{% include card-list.html cards = sites %}
