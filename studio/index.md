---
layout: base
title: The Studio
author: Fred Gibbs
date: 2025-01-01
description: "Amaranth is where humanistic inquiry, technology, and design converge. We help students, scholars, and communities bring humanities work into public life through collaborative projects and open-source tools at UNM."
header-image: /assets/images/headers/printing-press-studio.avif
header-title: The Studio
header-tier: section
header-filter: woodcut
header-height: 60vh
---

## What we do

Amaranth is where humanistic inquiry, technology, and design converge. We help students, scholars, educators, and communities bring humanities work into public life---not by treating technology as a service or design as decoration, but by weaving all three into every project from the start.

Through collaborative projects, open-source tools, and hands-on experimentation, we create storytelling experiences, interactive archives, and digital scholarship that invites real engagement with the questions that matter most. A 3D-printed artifact isn't just a technical exercise---it's a designed argument about material culture. A podcast isn't just recorded audio---it's a crafted narrative that shapes how listeners encounter an idea.

We don't do things *for* people---we work *with* them, teaching the thinking behind every design and technical decision. The goal isn't to hand someone a finished product. It's to help them develop the fluency to make their own choices and carry their work forward.

This shapes what we offer and what we don't. We don't run code for scholars or build pipelines they'll never understand. We believe researchers should know their own methods---not just the conclusions, but the technical choices that produced them. A humanist who understands *why* they chose a particular tool, format, or platform is a better scholar than one who outsourced those decisions. Our work is building that understanding, one project at a time.

## Where we're headed

We envision a future where emerging technologies deepen humanities work rather than replace it---where *how* you present an argument is as powerful as the argument itself. Too often, humanists are handed tools and told to make do. We think it should work the other way around: the questions humanists ask should drive the technologies and designs we build.

Our studio is a place where that vision takes shape---where the next generation of humanists learns to think across disciplines, combining critical inquiry with technical skill and intentional design to build work that reaches beyond the academy and into the world.


## Why Amaranth?
Amaranth originates from the Greek _amarantos_, meaning unfading---as in permanence or immortality. There's a playful irony in naming a digital humanities studio after a symbol of permanence, given how quickly digital technology becomes obsolete. We hope our work with open-source, sustainable processes lengthens the lifespan of our projects. But we also acknowledge the contradiction: we're building with materials that fade faster than the ancient flower ever did.

Amaranth also represents the inherent contradictions that humanists explore. Throughout history, people have used dozens of species of amaranth plants for medicines, dyes, and food---some are now regarded as "superfoods," while others are developing glyphosate tolerance, making them "superweeds" that disrupt modern agriculture. That tension between nourishment and disruption feels about right for the digital humanities.


## Team

{% for member in site.data.team.people %}
<div class="card card-horizontal mb-4" style="max-width: 100%;">
  <div class="row g-0 align-items-center">
    <div class="col-md-4">
      <img src="{{ site.baseurl }}/assets/images/team/{{ member.pic }}" class="img-fluid rounded-start" alt="{{ member.name }}"
        style="object-fit:cover; height:100%; min-height:220px;">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h6 class="card-subtitle mb-1">{{ member.position }}</h6>
        <h4 class="card-title mb-2">{{ member.name }}</h4>
        <p class="card-text">{{ member.bio }}</p>
        {% if member.link %}
        <p class="card-text"><small class="text-muted"><a href="{{ member.link }}" target="_blank">{{ member.link }}</a></small></p>
        {% endif %}
      </div>
    </div>
  </div>
</div>
{% endfor %}


