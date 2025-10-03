---
layout: base
title: Poster Contest
subtitle:
author: Jonathan Seyfried
date: 2025-06-19
---

# HGSA Poster Contest

The UNM History Graduate Student Association recently conducted their first poster contest. The challenge was to create a design in the style of a book jacket for a course or research project.

Some of the entries for the contest in Spring 2025 are included in the below carousel. Even if you can't see the arrows clearly, you can click on the left or right sides of the images to see more posters.

{% assign images =
"/assets/images/posters/1.jpg,
/assets/images/posters/2.jpg,
/assets/images/posters/3.jpg" | split: ','
%}

{% include carousel.html
images = images
id = "carouselExample"
%}
