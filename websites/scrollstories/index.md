---
title: ScrollStories
layout: base
date: 2024-10-26
header-image: /assets/images/site/storyboard.png

cards: 
  - title: "Mesa Vista Hall"
    thumbnail: /websites/scrollstories/mesa-vista-hall/images/mvh-floorplan.jpg
    summary: This chapter explores the ceremonial and religious aspects of food in Viking society, examining feasts, sacrificial offerings, and mythological references to food and drink in Norse texts.
    link: "mesa-vista-hall/"

  - title: Sugar, Emeralds, and Unicorn Horn
    thumbnail: "https://jeseyfried.github.io/sugar-emeralds-unicorn/images/davallano-1.jpg"
    summary: In the spring of 1375, Matha d’Armagnac, the Duchess of Girona, drank a solution made with pulverized emeralds as a key ingredient. If the gemstones worked as predicted by the apothecary, Matha’s pregnancy would result in the birth of a strong boy. 
    link: "https://jeseyfried.github.io/sugar-emeralds-unicorn/"
---

# ScrollStories
A traditional webpage with a few images and text, and maybe a few pull quotes is compact and familiar way to communicate. 

Those wanting something a little more visually engaging have often used ESRI's StoryMaps, which offer a richer viewing experience through the way diffrent elements interact with each other as you scroll through the story.

One limitation of StoryMaps is its opaquenss. Your story, your data, and design choice go into a database that you might eventually lost access to. It's hard to preserve your story in native form when entirely dependent on another platform. 

{% assign cards = page.cards %}

{% include card-list.html 
cards = cards 
%}
