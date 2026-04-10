---
layout: sketchbook
title: Argument Audit
description: "A teaching sketch that uses AI-generated objections to help students sharpen an argument instead of outsourcing one."
summary: "Students use AI-generated objections to test whether a thesis is vague, vulnerable, or genuinely persuasive."
thumbnail: "/assets/images/headers/wormiani.jpg"
css: sketchbook.css
date: 2026-04-09
status: refined
tags:
  - writing
  - argument
  - seminar
card_order: 10
---

{::nomarkdown}
<div class="sketchbook-page-header sketchbook-post">
  <h1>Argument Audit</h1>
  <p>A classroom exercise for making students defend an argument more precisely by asking AI to generate objections they then have to sort, test, and answer.</p>
  <span class="section-accent teach"></span>
  <div class="sketchbook-post-meta">
    <span class="sketch-tag {{ page.status }}">{{ page.status }}</span>
    {% for tag in page.tags %}<a class="sketch-tag topic" href="{{ '/explore/ai-sketchbook/tags/' | relative_url }}?tag={{ tag | url_encode }}">{{ tag }}</a>{% endfor %}
  </div>
</div>
{:/nomarkdown}

Students often treat critique as something that happens after a draft is mostly finished. This exercise moves critique earlier. The AI becomes a machine for producing objections on demand, and the students' job is to decide which of those objections are generic noise and which ones expose a real weakness in the argument.

The point is not that AI is a brilliant critic. Usually it is not. The point is that it can quickly generate the kind of broad, plausible counterarguments that force students to clarify what exactly they are claiming, what evidence would count against them, and where their wording is still too loose.


## How It Works
Ask students to bring in a working thesis paragraph, interpretive claim, or partial draft. They paste that argument into an AI tool and ask it to produce the three strongest objections it can imagine.

Then the real work begins. Students annotate the objections and sort them into three buckets:

- objections that are too generic to matter
- objections that misunderstand the argument as written
- objections that actually expose a gap, ambiguity, or unsupported leap

That sorting process is the assignment. It makes students articulate why an objection fails instead of merely feeling that it fails.

## Sample Prompt

{::nomarkdown}
<div class="sketch-prompt">
  <span class="sketch-prompt-label">prompt to give students</span>
  Here is my argument: [paste paragraph]. Give me the three strongest objections to this claim. For each objection, explain what someone would have to believe for that objection to succeed, and identify what evidence would make the objection more serious.
</div>
{:/nomarkdown}

## In Class

This works well as a 20 to 30 minute workshop inside a larger writing day.

1. Students paste in their draft paragraph.
2. They collect the objections.
3. They mark up the AI output individually.
4. In pairs, they compare which objections they took seriously and why.
5. They revise the original claim in light of the strongest objection.

That final revision matters. Without it, the exercise can stay at the level of commentary. With it, students leave with sharper prose and a more defensible claim.

## What Students Learn

- A counterargument is only strong if it lands on the actual claim being made.
- Vague objections often reveal vague writing.
- Defending an argument means specifying scope, evidence, and stakes.
- Authoritative tone is not the same thing as analytical precision.

## Caveats

AI tends to generate objections that sound reasonable but are thin, repetitive, or detached from the actual text. That limitation is useful here, but only if students already have something specific enough to test. If the draft is too early or too vague, the exercise becomes generic very quickly.

I would use this in upper-division courses, graduate seminars, or any class where students are making sustained interpretive claims rather than summarizing material.