---
layout: base
title: Poster Contest
subtitle: 
author: Jonathan Seyfried
date: 2025-06-19
---


<h2>History Graduate Student Association Poster Contest</h2>

The student group representing the graduate students in the Department of History sponsors a poster contest each semester. 

Some of the entries for the contest in Spring 2025 are included below.

{% assign images = 
"/assets/images/posters/1.jpg,
/assets/images/posters/2.jpg,
/assets/images/posters/3.jpg" | split: ','
%}

{% include carousel.html
images = images
id = "carouselExample"
%}
