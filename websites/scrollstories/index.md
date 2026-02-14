---
title: ScrollStories
layout: base
date: 2024-10-26
header-image: /assets/images/headers/storyboard.jpg
header-height: 60vh

cards:
  - title: "Why Amaranth?"
    thumbnail: /websites/scrollstories/amaranth-name/images/amaranth.jpg
    summary: From Greek mythology to Aztec sacred rituals to modern superweeds, the amaranth plant embodies the contradictions at the heart of digital humanities work.
    link: "amaranth-name/"

  - title: "Mesa Vista Hall"
    thumbnail: /websites/scrollstories/mesa-vista-hall/images/mvh-floorplan.jpg
    summary: This chapter explores the ceremonial and religious aspects of food in Viking society, examining feasts, sacrificial offerings, and mythological references to food and drink in Norse texts.
    link: "mesa-vista-hall/"

  - title: Sugar, Emeralds, and Unicorn Horn
    thumbnail: "https://jeseyfried.github.io/sugar-emeralds-unicorn/images/davallano-1.jpg"
    summary: In the spring of 1375, Matha d'Armagnac, the Duchess of Girona, drank a solution made with pulverized emeralds as a key ingredient. If the gemstones worked as predicted by the apothecary, Matha's pregnancy would result in the birth of a strong boy.
    link: "https://jeseyfried.github.io/sugar-emeralds-unicorn/"
---

# Stories designed to be experienced

A ScrollStory is what happens when you treat a webpage not as a document but as a designed experience. As readers scroll, backgrounds shift, images emerge, and text appears in rhythm with the narrative. The design decisions---pacing, scale, visual rhythm, contrast---shape how your audience encounters your argument. It's not just reading. It's moving through a story.

ScrollStories are built on the same open-source platform as all our websites, which means your story, your images, and your design choices live in files you own---not locked inside a proprietary database that might disappear. They work on any device, cost nothing to host, and will still be online years from now.

You don't need to be a designer or a developer to build one. If you can write in Markdown and choose images that matter, you can create a ScrollStory. We provide the templates; you bring the narrative.

{% assign cards = page.cards %}

{% include card-list.html
cards = cards
%}
