---
title: Collaborative Class Projects
layout: base
date: 2024-10-26
description: "Turn course assignments into public scholarship. Amaranth helps UNM instructors build collaborative class websites where student work lives on the open web—free, durable, and built to last."
header-image: /assets/images/headers/oil-painting.jpg
header-tier: section
header-filter: woodcut
header-zoom: 110%
header-position: center 40%
header-title: Bring students together

---

A collaborative class website changes the stakes of a course assignment. Instead of writing a paper that only one person reads, students contribute to a shared project that lives on the open web. Each contribution is small, but together they create something no one person could build alone. Students write more carefully, design more intentionally, and care more about clarity—and they leave with something more durable than a grade: the experience of directing a real project, making it work, and putting it in front of an audience.
{: .lead}



## Designing for an audience
Building a page on a collaborative website is a design challenge as much as a writing one. Students have to think about visual hierarchy: 
- What does a reader see first? 
- How do images and text work together to tell a story? 
- How does the page guide someone through an argument? 

These are communication skills that transfer far beyond a single course---and they're exactly the kind of skills that humanities graduates need but rarely get to practice.


## Digital literacy without coding
Our platform teaches students how websites work---how simple code blocks display images, how metadata enables functionality, and how version control lets a group collaborate without overwriting each other's work---without requiring them to learn programming. They edit simple text files and see their work published as webpages. Many students also use AI to handle technical decisions while keeping their focus on the intellectual argument—learning to direct AI rather than be directed by it. Technology becomes a little less intimidating, and the confidence that comes from building something real is something students carry forward.


## Built to last
Commercial website builders lock content into proprietary platforms that charge subscription fees. Our sites run on GitHub Pages---free, open, and built on web standards that will still work decades from now. Some early projects haven't been touched in almost a decade and they work exactly as they did at the end of the course that created them. Sustainability by design.


## How it works
The process is the same for instructors and students: create a free GitHub account, duplicate the project template, and start editing the sample pages. No coding, no special software, no server administration. The [Xanthan getting started guide](https://xanthan-web.github.io/docs/getting-started) walks through every step, and we're always happy to visit a class to help.

{% assign sites = site.data.websites | where: "category", "class-project" %}
{% include card-list.html cards = sites %}
