---
layout: base
title: The Studio
author: Fred Gibbs
date: 2025-01-01
header-image: /assets/images/headers/workshop.jpg
header-height: 60vh
---

# The Studio

## What we do

Amaranth is where humanistic inquiry, technology, and design converge. We help students, scholars, educators, and communities bring humanities work into public life---not by treating technology as a service or design as decoration, but by weaving all three into every project from the start.

Through collaborative projects, open-source tools, and hands-on experimentation, we create storytelling experiences, interactive archives, and digital scholarship that invites real engagement with the questions that matter most. A 3D-printed artifact isn't just a technical exercise---it's a designed argument about material culture. A podcast isn't just recorded audio---it's a crafted narrative that shapes how listeners encounter an idea.

We don't do things *for* people---we work *with* them, teaching the thinking behind every design and technical decision. The goal isn't to hand someone a finished product. It's to help them develop the fluency to make their own choices and carry their work forward.

This shapes what we offer and what we don't. We don't run code for scholars or build pipelines they'll never understand. We believe researchers should know their own methods---not just the conclusions, but the technical choices that produced them. A humanist who understands *why* they chose a particular tool, format, or platform is a better scholar than one who outsourced those decisions. Our work is building that understanding, one project at a time.

## Where we're headed

We envision a future where emerging technologies deepen humanities work rather than replace it---where *how* you present an argument is as powerful as the argument itself. Too often, humanists are handed tools and told to make do. We think it should work the other way around: the questions humanists ask should drive the technologies and designs we build.

Our studio is a place where that vision takes shape---where the next generation of humanists learns to think across disciplines, combining critical inquiry with technical skill and intentional design to build work that reaches beyond the academy and into the world.


## The space

Amaranth lives in Mesa Vista Hall at UNM---a workspace where students, scholars, and community members come together to experiment with technology, design, and humanities storytelling. Whether you're printing a 3D model, editing a podcast, building a ScrollStory, or just thinking through a project idea, the studio is a place to try things, get feedback, and learn by doing.

You don't need an appointment to stop by during studio hours. Bring your laptop, bring a project, or just bring curiosity. People work on their own things alongside each other, ask questions, share what they're learning, and help each other troubleshoot. Think of it like a pottery studio: someone shows you how to center the clay, but you're the one at the wheel. It's a workshop, not a service desk.


## Come by

**Spring 2026 studio hours:** Tuesdays & Thursdays 9:30--11:00 and 12:30--2:00, Wednesdays 10:00--12:00.

Or email us at <amaranth@unm.edu> to [book a consultation](/collaborate).


## What's here

We maintain a range of tools for humanities projects---all available for students, faculty, and community collaborators.

### Printing & fabrication
- [**3D Printer**](/equipment/3d-printer) --- Anycubic Kobra 3 for printing models, terrain maps, architectural details, and experimental objects
- [**3D Scanner**](/equipment/3d-scanner) --- Digitize physical objects for study, comparison, or reproduction
- [**Poster Printer**](/equipment/poster-printer) --- HP DesignJet T630 for large-format academic posters and visual projects

### Audio & media
- [**Podcast Microphones**](/equipment/yeti-mics) --- YETI USB mics for recording oral histories, podcasts, and interviews
- [**360 Camera**](/equipment/360-camera) --- Capture immersive panoramic images of spaces and sites

### Exploration
- [**VR Headsets**](/equipment/vr-headsets) --- Meta Quest 3 and HTC Vive Focus for exploring and critiquing virtual environments


## A look inside

Below is a 360 tour from the very first incarnation of the studio. Stop by to see how much has changed!

<iframe
  src="https://jeseyfried.github.io/amaranth-holding-area/app-files/index.html"
  width="100%"
  height="600"
  style="border:none;overflow:hidden"
  allow="fullscreen"
  webkitallowfullscreen
  mozallowfullscreen
  allowfullscreen>
</iframe>



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


