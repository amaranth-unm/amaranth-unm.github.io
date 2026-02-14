---
layout: base
title: About Amaranth
author: Fred Gibbs
date: 2024-10-28
header-image: /assets/images/headers/campfire.jpg
header-height: 60vh
---

# About Amaranth

## What we do
We help students, scholars, educators, and communities use technology and design to bring humanities work into public life. Through collaborative projects, open-source tools, and hands-on experimentation, we create immersive storytelling experiences, interactive archives, and digital scholarship that invites real engagement with the questions that matter most.

## What we're working toward
We envision a future where emerging technologies deepen humanities work rather than replace it---where *how* you present an argument is as powerful as the argument itself. Our studio is a place where humanistic inquiry, technology, and design converge, helping the next generation of humanists build work that reaches beyond the academy.

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