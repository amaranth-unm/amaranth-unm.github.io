---
layout: sketchbook
title: Citation Test
description: "A teaching sketch that uses AI-generated bibliographies to teach verification, source checking, and skepticism about polished prose."
summary: "Students verify AI-generated citations one by one and turn fabricated sources into a lesson about evidence and authority."
thumbnail: "/assets/images/headers/Glen_Beck_and_Betty_Snyder_program_the_ENIAC_in_building_328_at_the_Ballistic_Research_Laboratory.jpg"
css: sketchbook.css
date: 2026-04-09
status: refined
tags:
  - source evaluation
  - fabrication
  - research skills
card_order: 20

---

{::nomarkdown}
<div class="sketchbook-page-header sketchbook-post">
  <h1>Citation Test</h1>
  <p>A verification exercise that turns AI's polished but unreliable bibliographies into a concrete lesson about what counts as evidence.</p>
  <span class="section-accent teach"></span>
  <div class="sketchbook-post-meta">
    <span class="sketch-tag {{ page.status }}">{{ page.status }}</span>
    {% for tag in page.tags %}<a class="sketch-tag topic" href="{{ '/explore/ai-sketchbook/tags/' | relative_url }}?tag={{ tag | url_encode }}">{{ tag }}</a>{% endfor %}
  </div>
</div>
{:/nomarkdown}

Ask AI for a reading list on a focused scholarly topic. Then verify every citation in public. Some will be real. Some will be distorted. Some will be entirely fabricated while sounding perfectly plausible.

That moment of discovery does a lot of pedagogical work. Students can see, in a concrete and slightly embarrassing way, that fluent prose and bibliographic formatting do not guarantee the existence of a source. It makes verification feel less like a library ritual and more like an intellectual necessity.


## How It Works
Choose a topic narrow enough to sound scholarly but broad enough that students will not already know the literature by heart. Ask AI for eight to ten key books and articles. Then have students track each citation across library catalogs, publisher pages, journal databases, and Google Scholar.

You can do this individually, but it works especially well as a group exercise where each team verifies two or three citations and then reports back. The room usually ends up with a mix of confirmed sources, half-right sources, and fully invented ones.

## Sample Prompt

{::nomarkdown}
<div class="sketch-prompt">
  <span class="sketch-prompt-label">prompt</span>
  Give me a reading list of 8 to 10 important scholarly works on [topic]. Include author, full title, journal or publisher, year, and a one-sentence note about why each source matters.
</div>
{:/nomarkdown}

## What To Verify

- Does the author exist?
- Does the title exist in that exact form?
- Does the journal, press, or book series match?
- Does the year line up?
- Does the source actually address the topic claimed in the annotation?

Once students start finding errors, the conversation usually shifts from "AI makes mistakes" to a more useful question: why are we so easily persuaded by the look and tone of correctness?

## Why This One Lands

Unlike more abstract conversations about hallucination, this exercise gives students a task with a clear answer. Either the source exists or it does not. Either the metadata is right or it is not. That clarity makes it a strong early-semester exercise in classes that involve research papers, annotated bibliographies, or historiographic review.

## Caveats

This works best when students have access to a real library discovery system and at least some guidance on how to search beyond Google. If they do not, the exercise can slide into frustration rather than insight.

I would also frame it carefully: the lesson is not simply "AI bad." The lesson is that verification is a scholarly habit, and AI gives us a vivid way to show why that habit matters.