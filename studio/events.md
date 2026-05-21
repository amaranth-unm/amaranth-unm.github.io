---
layout: base
title: Events
description: "Upcoming and past events from Amaranth, UNM's Digital Humanities Studio. Workshops, talks, and hands-on sessions on digital storytelling, 3D printing, web development, and more."
header-image: /assets/images/headers/1280px-Farandole_médiévale_enluminure_vers_1400.jpg
header-title: Events
header-caption: Medieval line dancing
header-image-link: https://commons.wikimedia.org/wiki/File:Farandole_m%C3%A9di%C3%A9vale_enluminure_vers_1400.jpg
header-tier: section
header-filter: photo
header-position: center 100%
---

{% assign events = site.data.events %}

{% include event.html events = events %}
