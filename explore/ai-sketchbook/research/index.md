---
layout: sketchbook
title: Research Sketches
description: "Workflow experiments and methodological notes for using AI in humanities research."
css: sketchbook.css
date: 2026-04-01
---

{::nomarkdown}
<div class="sketchbook-page-header">
  <h1>Research Sketches</h1>
  <p style="color: var(--ink-mid); max-width: 640px; margin: 0.75rem 0 0;">Workflow experiments, analysis techniques, and methodological notes — ways AI has proven useful (and useless) in actual humanities scholarship.</p>
  <span class="section-accent research"></span>
</div>
{:/nomarkdown}

{::nomarkdown}
<div class="sketch-entries research">

  <div class="sketch-entry">
    <div class="sketch-entry-header">
      <p class="sketch-entry-title">Argument map</p>
      <div class="sketch-tags">
        <span class="sketch-tag tested">tested</span>
        <span class="sketch-tag topic">close reading</span>
        <span class="sketch-tag topic">secondary sources</span>
      </div>
    </div>
    <p>Feed AI a complex secondary source — an article or book chapter — and ask it to outline the main claim, sub-claims, key evidence, and unstated assumptions. Then compare its map to your own reading. Where they diverge is often where the real intellectual work is.</p>
    <p>Most useful when entering an unfamiliar subfield and needing to orient quickly, or when a text is deliberately difficult and you want a first-pass skeleton before reading closely. The AI's map is a scaffold, not a substitute.</p>
    <div class="sketch-prompt">
      <span class="sketch-prompt-label">prompt</span>
      "Here is an academic article: [paste or describe]. Identify the main argument, the two or three key sub-claims, the primary evidence used for each, and any significant assumptions the author does not defend."
    </div>
    <div class="sketch-entry-footer">
      <a href="#" class="sketch-read-more">read more →</a>
    </div>
  </div>

  <div class="sketch-entry">
    <div class="sketch-entry-header">
      <p class="sketch-entry-title">Pattern finder across a corpus</p>
      <div class="sketch-tags">
        <span class="sketch-tag tested">tested</span>
        <span class="sketch-tag topic">text analysis</span>
        <span class="sketch-tag topic">large corpus</span>
      </div>
    </div>
    <p>Paste a set of documents — letters, newspaper articles, government reports, literary passages — and ask AI to identify recurring themes, shifts in language, rhetorical patterns, or structural features you had not noticed. Not to interpret them, but to flag them for your analysis.</p>
    <p>Works at scales where close reading alone becomes impractical. The AI surfaces patterns you can then investigate; it will not tell you what they mean. That is still your work.</p>
    <div class="sketch-prompt">
      <span class="sketch-prompt-label">prompt</span>
      "Here are [n] documents from [context]. What themes, phrases, or structural patterns appear most consistently? List them without interpretation — I want to see what recurs before I decide what it means."
    </div>
    <div class="sketch-entry-footer">
      <a href="#" class="sketch-read-more">read more →</a>
    </div>
  </div>

  <div class="sketch-entry">
    <div class="sketch-entry-header">
      <p class="sketch-entry-title">Research gap spotter</p>
      <div class="sketch-tags">
        <span class="sketch-tag rough">rough idea</span>
        <span class="sketch-tag topic">methodology</span>
        <span class="sketch-tag topic">literature review</span>
      </div>
    </div>
    <p>Describe your research question and current sources to AI. Ask it to identify perspectives, time periods, geographic contexts, or methodological approaches that seem underrepresented in your reading so far.</p>
    <p>Worth being skeptical: the AI's sense of "underrepresented" reflects gaps in its own training data as much as gaps in the field. It is better at flagging obvious absences than subtle ones. Use as a provocation, not a verdict.</p>
    <div class="sketch-prompt">
      <span class="sketch-prompt-label">prompt</span>
      "My research question is [X]. My main sources focus on [Y]. What important perspectives, time periods, or methodological approaches seem absent? Be specific about what is missing and why it might matter."
    </div>
    <div class="sketch-entry-footer">
      <a href="#" class="sketch-read-more">read more →</a>
    </div>
  </div>

  <div class="sketch-entry">
    <div class="sketch-entry-header">
      <p class="sketch-entry-title">Messy data normalizer</p>
      <div class="sketch-tags">
        <span class="sketch-tag tested">tested</span>
        <span class="sketch-tag topic">archives</span>
        <span class="sketch-tag topic">workflow</span>
      </div>
    </div>
    <p>Paste a table of archival data with inconsistent spellings, mixed date formats, variant place names, or incomplete records. Ask AI to normalize it into clean, consistent columns. Use as a first pass, then verify manually — especially names, which AI will sometimes "correct" into plausible but wrong variants.</p>
    <p>The unglamorous work that makes digital projects possible. Half a day of tedious cleanup can become an hour of verification.</p>
    <div class="sketch-prompt">
      <span class="sketch-prompt-label">prompt</span>
      "Here is a table of archival records with inconsistent formatting: [paste]. Normalize the date column to YYYY-MM-DD, standardize place names to their modern spelling, and flag any entries you are uncertain about."
    </div>
    <div class="sketch-entry-footer">
      <a href="#" class="sketch-read-more">read more →</a>
    </div>
  </div>

  <div class="sketch-entry">
    <div class="sketch-entry-header">
      <p class="sketch-entry-title">Transcription first draft</p>
      <div class="sketch-tags">
        <span class="sketch-tag rough">rough idea</span>
        <span class="sketch-tag topic">oral history</span>
        <span class="sketch-tag topic">archives</span>
      </div>
    </div>
    <p>For oral history recordings or handwritten documents: use AI tools to generate a rough transcription, then edit it rather than transcribing from scratch. The editing pass catches errors you might have missed in a cold transcription.</p>
    <p>Still working out the right review workflow. AI stumbles on names, accents, technical vocabulary, and faint audio — exactly the parts that matter most in oral history. The draft is a starting point, not a deliverable.</p>
    <div class="sketch-prompt">
      <span class="sketch-prompt-label">tools</span>
      Whisper (OpenAI) for audio transcription; Claude or GPT-4V for handwritten documents with image input. Both require a careful verification pass before citing.
    </div>
    <div class="sketch-entry-footer">
      <a href="#" class="sketch-read-more">read more →</a>
    </div>
  </div>

</div><!-- /.sketch-entries -->
{:/nomarkdown}
