---
layout: base
title: About Amaranth
subtitle: what why when how
author: Fred Gibbs
date: 2024-10-28
---

# About Amaranth

## Mission: What we do
We help bring technology and the humanities together. We empower students, scholars, educators, and communities to create immersive, interactive archives and storytelling experiences that invite critical engagement with core humanities issues. Through collaborative projects, open-access resources, and experimental digital platforms, we aim to bring humanities research into public discourse.

## Vision: What we dream
We envision a future where humanities inquiry is at the heart of digital transformation, making it more accessible, ethical, and inclusive. Our studio strives to be a pioneering hub where humanistic inquiry, technology, and design converge—cultivating an environment that not only preserves but also reimagines the narratives that define our shared heritage. By breaking down traditional barriers to knowledge and sparking interdisciplinary conversations, we aspire foreground the stories that shape our world.

## Why Amaranth?
Amaranth originates from the Greek _amarantos_, which means unfading---as in permanence or immortality. Of course there's a playful irony here, as the speed of new innovation in digital technology often leads to a rather rapid fading of its products. We hope our work with open source, sustainable processes lengthens the life span of our projects.

Amaranth also represents the inherent contradictions that humanists explore. Throughout history and into the present, people have used the dozens of species of Amaranth plants for a huge range of uses, including medicines and dyes. Some amaranth specices have been used for food for millenia, and are now regarded as "super foods". Others now are developing gyphosate tolerance, making them "super weeds" that interefere with modern agri-business.

Over the last few decades, a new set of digital technology tools and techniques emerged to provide humanists with many options for projects and research. The diversity of opportunities in the digital humanities thus lends itself to a metaphor that captures this idea of growth from variety. 


## Historic Virtual Tour
Below you can see what the very first incaration of _Amaranth_ looked like. View the 360 photo with info labels to see what's around! Stop by to see how much has changed! 

<iframe 
  src="https://jeseyfried.github.io/amaranth-holding-area/app-files/index.html" 
  width="100%" 
  height="800" 
  style="border:none;overflow:hidden"
  allow="fullscreen"
  webkitallowfullscreen
  mozallowfullscreen
  allowfullscreen>
</iframe>


<!-- Team Section -->
<section id="team" class="bg-light-gray">    
        <div class="row">
            {% for member in site.data.team.people %}
            <div class="col-sm-4">
                <div class="team-member">
                    <img src="/assets/images/team/{{ member.pic }}.jpg" class="img-responsive img-circle" alt="">
                    <h4>{{ member.name }}</h4>
                    <p class="text-muted">{{ member.position }}</p>
                    <ul class="list-inline social-buttons">
                        {% for network in member.social %}
                        <li>
                            <a href="{{ network.url }}">
                                <i class="fa fa-{{ network.title }}"></i>
                            </a>
                        </li>
                        {% endfor %}

                    </ul>
                </div>
            </div>
            {% endfor %}
        </div>        
</section>