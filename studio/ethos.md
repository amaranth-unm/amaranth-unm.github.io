---
layout: base
title: The Studio
author: Fred Gibbs
date: 2025-01-01
description: "Amaranth is UNM's Digital Humanities and Public Scholarship Studio, a collaborative space where humanists learn to build, communicate, and publish work with care."
header-image: /assets/images/headers/workshop2.jpg
header-title: Let's experiment together
header-tier: section
header-filter: woodcut
header-caption: Early printing studio
header-zoom: 110%
header-position: center 40%
---

Amaranth is a collaborative studio that brings the humanities and technology together. It's a place where you come to learn, experiment, fail, and make things, even when they aren't what you had in mind.

We work alongside you as we explore AI research workflows, design decisions, and technical challenges. When you leave, your comfort should be a little higher and your reach a little further than when you arrived. We don't pretend to have it figured out. We're humanists who work with these tools constantly, and we're learning alongside you where they help and where they mislead. That honesty is part of what we offer.
{: .lead}

## Human-centered technology
Amaranth's work starts with people, sources, communities, and questions, not tools. That matters most with AI. We are interested in AI when it helps humanists see across larger collections, structure messy materials, compare images, or make public projects possible sooner. We are not interested in AI as a substitute for interpretation, accountability, or care.

Human-centered AI means keeping the researcher close to the evidence: prompts that can be inspected, outputs that can be checked, sources that remain traceable, and communities that are treated as partners rather than data. The point is not to automate humanities work. The point is to make more of the work visible, discussable, and responsible.


## Our interests and focus
- Developing AI-assisted research workflows that expand what humanists can study and ask
- Interdisciplinary collaborations across the humanities and social sciences
- Community-engaged projects that connect scholarly work to broader audiences and partners
- Building student capability and confidence through real projects with real stakes
- Designing public research from first idea through finished form


## Forms we work in
We're not organized around equipment or software. We're organized around what people are trying to communicate and who they are trying to reach. Through collaborative projects, open-source tools, and hands-on experimentation, Amaranth works in forms like:

- **Public websites** built on open infrastructure, owned by their creators, designed to last
- **Audio and narrative work**—oral histories, podcasts, ScrollStory essays—where medium and message reinforce each other
- **3D fabrication** for teaching, research, and exhibition
- **Poster design and large-format printing** for conferences and public display
- **AI-assisted workflows** that put scholars in the editorial seat


## Design resources
Design is central to visual communication. To that end, the studio maintains a collection of introductory design books: basic principles, typography, design history, visual inspiration. Good design isn't about professional credentials. It is about taking seriously how your work reaches an audience. Whether you're designing a poster for a conference, laying out a website, or choosing typefaces for a digital exhibit, thoughtful visual decisions strengthen your argument. Come browse the collection during studio hours.


## Amaranth at UNM
Amaranth serves UNM's priorities in ways that feel natural rather than institutional: experiential learning through projects students actually care about, university research connected to community partners, digital literacy across tools and workflows, and humanities voices in the AI conversations already happening across campus. New Mexico makes this feel less like a strategic priority and more like an obvious necessity.


## Why Amaranth?
The name comes from the Greek *amarantos*: unfading. There's a deliberate irony in naming a digital humanities studio after a symbol of permanence, given how quickly technology becomes obsolete. We embrace the contradiction—and the richer story of a plant that has meant sacred grain, colonial threat, superfood, and superweed, depending on who's growing it and why. [Read the full story →](/studio/why-amaranth)


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
