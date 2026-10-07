---
title: Collaborative Class Projects
layout: base
date: 2024-10-26
description: "Turn course assignments into public scholarship. Amaranth helps UNM instructors showcase class research with websites that are free, durable, and fundamentally collaborative."
header-image: /assets/images/headers/oil-painting.jpg
header-tier: section
header-filter: woodcut
header-zoom: 110%
header-position: center 40%
header-title: Bring students together

---

A collaborative class website changes the stakes of a course assignment. Instead of writing a paper that only the instructor reads, students build a shared project that lives on the open web — one a future student, a journalist, or a stranger who finds it through a search engine might actually read. Each contribution is small, but together they build something no single student could pull off alone. Students write more carefully, design more intentionally, and care more about clarity when they know the audience is bigger than one grader.
{: .lead}



## Designing for an audience
Building a page on a collaborative website is a design challenge as much as a writing one. Students have to think about visual hierarchy: 
- What does a reader see first? 
- How do images and text work together to tell a story? 
- How does the page guide someone through an argument? 

These are communication skills that transfer far beyond a single course. Humanities graduates need to build these visual-based skills no matter what they do next, but they rarely get to practice them in humanities coursework.


## Digital literacy without coding
Students edit plain text files and watch them turn into live webpages within minutes — which is how they start to understand how websites actually work: how a simple code block displays an image, how metadata quietly does the work of organizing a site, how version control lets a dozen people edit the same project without anyone overwriting anyone else's work. Many students also bring AI into the process, directing it on technical decisions while keeping their own focus on the argument. Learning to make those calls well — when to hand something off, when to double-check it, when to do it yourself — is its own kind of literacy, and it's one they carry into every project after this one.


## Built to last
Commercial website builders lock content into proprietary platforms that charge subscription fees. Our sites run on GitHub Pages---free, open, and built on web standards that will still work decades from now. Some early class projects haven't been touched since the semester that produced them, nearly a decade ago, and they still load exactly as they did on the last day of class — by design, not by luck.


## How it works
The process is the same for instructors and students: create a free GitHub account, duplicate the project template, and start editing the sample pages. No coding, no special software, no server administration. The [Xanthan getting started guide](https://xanthan-web.github.io/docs/getting-started) walks through every step, and we're always happy to visit a class to help. For guidance on how to integrate a class project website into the flow of your course, see our [Instructor's Guide](/websites/instructors-guide)


## Examples

{% assign all_sites = site.data.websites | where: "category", "class-project" | sort: "display-order" %}
{% include feature-blocks.html cards=all_sites screenshot=true %}

<p class="mt-3 text-end"><a href="/websites/gallery" class="btn-cta">See portfolios and ScrollStories too →</a></p>
