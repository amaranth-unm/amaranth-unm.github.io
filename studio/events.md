---
layout: base
title: Events
description: "Upcoming and past events from Amaranth, UNM's Digital Humanities Studio. Workshops, talks, and hands-on sessions on digital storytelling, 3D printing, web development, and more."
header-image: /assets/images/headers/common-room-posters.jpg
header-title: Events
header-tier: section
header-filter: photo
---

{% assign events = site.data.events %}

{% include event.html events = events %}
