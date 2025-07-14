---
title: Directory
layout: base
date: 2024-10-26
chapters: 
  - title: "Medieval Capitals"
    image: "assets/bg-images/capitals-together-small.jpg"
    summary: Using 3D prints to deepen understanding of Gothic architectural styles.
    link: "capitals"

  - title: "Digital Essays"
    image: "assets/bg-images/word-docs.jpg"
    summary: How to create an online space for what students create in a course.
    link: "digital-essays"

  - title: "HGSA Poster Contest"
    image: "assets/bg-images/four-posters.jpg"
    summary: Demonstrating the capability of Amaranth's poster printer.
    link: "poster-contest"

  - title: "Friction Maps"
    image: "assets/bg-images/friction-map-tile.png"
    summary: 3D printed maps that illustrate the friction that blocks political expansion or cultural influence.
    link: "terrain"

  - title: "Podcast Repository"
    image: "assets/bg-images/headphones.jpg"
    summary: A sample website for an archive of student-created podcasts.
    link: "podcasts"
---



# Amaranth Use Cases
<!-- change row-cold-md-2 to 3 or 4 for different number of cols -->
<div class="row row-cols-1 row-cols-md-2 g-4">

{% for chapter in page.chapters %}
<div class="col">
  <div class="card v-card">
    <a href="{{chapter.link}}">
    <img src="{{ chapter.image }}" class="card-img-top" alt="...">
    <div class="card-body">
      <h3 class="card-title">{{ chapter.title }}</h3>
      <p class="card-text">{{ chapter.summary }}</p>
    </div>
    </a>
  </div>
</div>
{% endfor %}

</div>

<br><br><br>
