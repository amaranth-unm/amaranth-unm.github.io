---
title: ScrollStories
layout: base
date: 2024-10-26
description: "ScrollStories are scroll-driven digital narratives where backgrounds shift and text emerges as readers move through your argument. Built with Xanthan at Amaranth, UNM."
header-image: /assets/images/headers/scroll-journey.jpg
header-title: "Stories designed to be experienced"
header-tier: section
header-filter: photo
header-zoom: 130%
header-position: 50% 80%

---

## Not a document. A journey.

A ScrollStory is what happens when you treat a webpage not as a document but as a designed experience. As readers scroll, backgrounds shift, images emerge, and text appears in rhythm with the narrative. The design decisions---pacing, scale, visual rhythm, contrast---shape how your audience encounters your argument. It's not just reading. It's moving through a story.

ScrollStories are built on the same open-source platform as all our websites, which means your story, your images, and your design choices live in files you own---not locked inside a proprietary database. They work on any device, cost nothing to host, and will still be online years from now.

You don't need to be a designer or a developer to build one. If you can write in Markdown and choose images that matter, you can create a ScrollStory. We provide the templates, you bring the narrative, and AI helps smooth over technical bumps.

{% assign sites = site.data.websites | where: "category", "scrollstory" %}
{% include card-list.html cards = sites %}
