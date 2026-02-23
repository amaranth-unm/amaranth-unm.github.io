---
layout: base
title: The Studio
author: Fred Gibbs
date: 2025-01-01
description: "Amaranth is UNM's Digital Humanities and Public Scholarship Studio—a coaching space where humanists learn to build, communicate, and publish scholarship that reaches the world."
header-image: /assets/images/headers/printing-press-studio.avif
header-title: The Studio
header-tier: section
header-filter: woodcut
header-height: 60vh
---

## A workshop, not a service desk
Amaranth is a studio in the original sense: a place where you come to learn, experiment, and make things---not to have things made for you. We don't write code or build websites that you'll never understand. We work alongside you, teaching the thinking behind technical and design decisions. When you leave, your comfort is a little higher and boundaries a litter further than they were. 

We liken it to a pottery wheel: the clay is yours, the ideas are yours. We're at the wheel with you, hands in the same clay, teaching the motion. When the session ends, you leave knowing how to center the clay—not just holding a pot someone else threw. A humanist who understands *why* they made a particular design or technical choice is a stronger scholar than one who outsourced those decisions. We're building that understanding, one session at a time.


## What we do

Through collaborative projects, open-source tools, and hands-on experimentation, Amaranth supports:

- **Public-facing websites** built on open infrastructure, owned by their creators, designed to last
- **Audio and narrative work**—oral histories, podcasts, ScrollStory essays—where medium and message reinforce each other
- **3D fabrication** for teaching, research, and exhibition
- **Poster design and large-format printing** for conferences and public display
- **AI-assisted workflows** that put scholars in the editorial seat

We're not organized around equipment or software. We're organized around what people are trying to communicate—and who they're trying to reach.


## Digital humanities at UNM

Amaranth is UNM's home for digital humanities work—connecting people across departments who might not otherwise know they're working on related questions. If you're new to the field or want to understand where Amaranth fits in its history and current moment, the [digital humanities page](/studio/digital-humanities) is a good place to start.


## Why Amaranth?

The name comes from the Greek *amarantos*: unfading. There's a deliberate irony in naming a digital humanities studio after a symbol of permanence, given how quickly technology becomes obsolete. We embrace the contradiction—and the richer story of a plant that has meant sacred grain, colonial threat, superfood, and superweed, depending on who's growing it and why.

[Read the full story →](/studio/why-amaranth)


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
