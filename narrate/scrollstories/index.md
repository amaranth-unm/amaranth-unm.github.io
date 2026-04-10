---
title: ScrollStories
layout: base
date: 2024-10-26
description: "ScrollStories are scroll-driven digital narratives where backgrounds shift and text emerges as readers move through your argument. Built with Xanthan at Amaranth, UNM."
header-image: /assets/images/headers/scroll-journey.jpg
header-title: "Stories designed to be experienced"
header-tier: section
header-filter: photo
header-position: center 60%

cards:
  - title: "Why Amaranth?"
    thumbnail: /studio/why-amaranth/images/amaranth.jpg
    summary: From Greek mythology to Aztec sacred rituals to modern superweeds, the amaranth plant embodies the contradictions at the heart of digital humanities work.
    link: "/studio/why-amaranth/"

  - title: "Mesa Vista Hall"
    thumbnail: /assets/images/headers/mvh-construction.jpg
    summary: A demo scrollstory with images from the history of the building that was once a dormitory and now houses many different types of university office, including the History Department.
    link: "mesa-vista-hall/"

  - title: A Cultural History of Arkham Asylum
    thumbnail: "/assets/images/projects/asylum.png"
    summary: Deep scrollstory with many images, demonstrating how visual analysis and narrative layering explore complex cultural history
    link: https://hadas496.github.io/comics-and-Reaganomics-/

  - title: Sugar, Emeralds, and Unicorn Horn
    thumbnail: "https://jeseyfried.github.io/sugar-emeralds-unicorn/images/davallano-1.jpg"
    summary: A more beginner-level scrollstory that includes several images but lacks the immersive layering in the other examples.
    link: "https://jeseyfried.github.io/sugar-emeralds-unicorn/"
---

## Not a document. A journey.

A ScrollStory is what happens when you treat a webpage not as a document but as a designed experience. As readers scroll, backgrounds shift, images emerge, and text appears in rhythm with the narrative. The design decisions---pacing, scale, visual rhythm, contrast---shape how your audience encounters your argument. It's not just reading. It's moving through a story.

ScrollStories are built on the same open-source platform as all our websites, which means your story, your images, and your design choices live in files you own---not locked inside a proprietary database. They work on any device, cost nothing to host, and will still be online years from now.

You don't need to be a designer or a developer to build one. If you can write in Markdown and choose images that matter, you can create a ScrollStory. We provide the templates, you bring the narrative, and AI helps smooth over technical bumps.

{% assign cards = page.cards %}

{% include card-list.html
cards = cards
%}
