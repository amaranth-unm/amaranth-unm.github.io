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

All the websites below were built by UNM students and faculty using Amaranth and [Xanthan templates](https://xanthan-web.github.io). They show the range of work that can live well on the open web. [Get in touch](/collaborate) if you have a project taking shape.

## Class Projects
{: .gallery-heading}

{% assign class_sites = site.data.websites | where: "category", "class-project" | sort: "display-order" %}
{% include card-grid.html cards=class_sites title-only=true gallery=true %}

## Portfolios
{: .gallery-heading}

{% assign portfolio_sites = site.data.websites | where: "category", "portfolio" | sort: "display-order" %}
{% include card-grid.html cards=portfolio_sites title-only=true gallery=true cols=2 %}

## ScrollStories
{: .gallery-heading}

{% assign scroll_sites = site.data.websites | where: "category", "scrollstory" | sort: "display-order" %}
{% include card-grid.html cards=scroll_sites title-only=true gallery=true %}
