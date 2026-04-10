---
layout: sketchbook
title: Use LLMs to Read Fourteenth-Century Gothic Secretarial Hand
description: "A workflow experiment in creating an agentic AI pipeline to create transcripts of digitized images from the Archive of the Crown of Aragon."
summary: "An AI agent worked with Gemini and Claude to bulk process 300 images of archival documents."
thumbnail: "images/apr-11-aca-cr-r2053-f4r-violant-img10.jpg"
css: sketchbook.css
date: 2026-04-09
status: tested
tags:
  - big data
  - paleography
  - agentic AI
card_order: 10
---

{::nomarkdown}
<div class="sketchbook-page-header sketchbook-post">
  <h1>Use LLMs to Read Fourteenth-Century Gothic Secretarial Hand</h1>
  <p>A workflow experiment in creating an agentic AI pipeline to create transcripts of digitized images from the Archive of the Crown of Aragon.</p>
  <span class="section-accent teach"></span>
  <div class="sketchbook-post-meta">
    <span class="sketch-tag {{ page.status }}">{{ page.status }}</span>
    {% for tag in page.tags %}<a class="sketch-tag topic" href="{{ '/explore/ai-sketchbook/tags/' | relative_url }}?tag={{ tag | url_encode }}">{{ tag }}</a>{% endfor %}
  </div>
</div>
{:/nomarkdown}

The government of Spain hosts a website called [PARES](https://pares.cultura.gob.es/pares/en/inicio.html) which contains over a million digitized images of archival documents. This includes much of the material in the Archive of the Crown of Aragon. During the centuries of Muslim rule, papermaking technology spread to southern Iberia. The paper-making towns continued production throughout the following centuries. By the fourteenth century the state could count on an abundant availability for record-keeping. In the 1380s and 1390s, the chancery produced thousands of pages of documentation every year.

{% include figure.html
  class="left"
  width="40%"
  caption="An example of a folio from an ACA register, ACA CR R2053 f4r."
  image-path="images/apr-11-aca-cr-r2053-f4r-violant-img10.jpg"
%}

In early February 2026, I tried uploading an image from PARES into Gemini and was surprised to see that the LLM generated a transcription of better quality than what I got from the specialized HTR platform [Transkribus](https://www.transkribus.org/), even after I had trained a model there with 60 documents of 'ground truth' transcriptions. In late February, I started to combine results from Gemini and Claude to increase the quality of transcription.

By combining Gemini and Claude, I am able to get usable quality HTR for documents written in late fourteenth-century Gothic secretarial hand. In late March, I started using agentic AI to obtain usable HTR and translations for entire ACA Registers. By usable, I mean that I can discover content through full-text searching. It does not mean that the accuracy of HTR allows me to be sure of full-text search results actually representing the entirety of the content in the Register. Obtaining a large data set of HTR output requires agentic AI and I have developed a workflow with OpenClaw. 

For the next step, I had OpenClaw combine all of the text files for each image in the Register into a CSV file. [Register 1819](https://jonathanseyfried.net/aca-reg1819-transcriptions/) was the first one I did this for and the data contains a lot of incorrect transcription, especially for dates. I had OpenClaw add to its pipeline instructions that the first image in each Register is a cover sheet with a date range. This improved the quality of the transcription of dates, although it is still not all that reliable. The third register I put through the pipeline, [Register 2053](https://jonathanseyfried.net/aca-reg2053-transcriptions), generated HTR data that appears to be significantly higher quality than what was generated for Register 1819. 

## Research Potential

- Generating big data from handwritten documents previously unavailable for automated text recognition (ATR).
- Full-text keyword search for names and toponyms.
- Leveraging the capabilities of multiple LLMs to check and correct each other's work.
- Analysis of images beyond scanned documents, such as identifying elements in image archives in bulk.

## Caveats

It takes about 12 hours to generate transcriptions from a 300-page Register. The cost in API fees comes out to about $75 for those 300 pages of HTR and translation into English.