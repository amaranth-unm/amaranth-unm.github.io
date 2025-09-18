---
layout: base
title: Events
subtitle: What's on the schedule?
header-image: assets/images/site/common-room-posters.png
header-height: 50vh
header-position: 40px
---

# Upcoming Events


{::nomarkdown}
</div> <!-- close container for bg work-->
{:/nomarkdown}

<div class="container" style="max-width:90%">

{% assign events = site.data.events %}

{% include event.html events = events %}

</div>
<div class="container">
