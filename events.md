---
layout: base
title: Events
subtitle: What's on the schedule?
header-image: /assets/images/headers/common-room-posters.jpg
header-height: 50vh
header-position: 40px
---

{::nomarkdown}
</div> <!-- close container to have larger width for event boxes-->
{:/nomarkdown}

<div class="container" style="max-width:90%">

{% assign events = site.data.events %}

{% include event.html events = events %}

</div>
<div class="container">
