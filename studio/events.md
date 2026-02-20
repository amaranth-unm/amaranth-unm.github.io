---
layout: base
title: Events
header-image: /assets/images/headers/common-room-posters.jpg
header-title: Events
header-tier: section
header-filter: photo
---

{% assign events = site.data.events %}

{% include event.html events = events %}
