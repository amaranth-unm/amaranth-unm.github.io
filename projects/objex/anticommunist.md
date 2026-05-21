---
layout: base
title: Memorial to the Victims of Communism
subtitle:
author: Jonathan Seyfried
date: 2025-08-03
header-image: /assets/images/headers/com-statue-close.jpg
---

# Printing Texture
In our 3D printing journey, we've sometimes felt disappointed at the lack of surface texture that gets picked up by 3D scanners. 

The human eye ascertains depth through color shading but a computer can't do that very easily. To capture texture, the 3D scanning process must include creating data on depth, using technology such as LiDAR or infrared, which can be tricky to do well. This is the reason that so many 3D scanned models lack texture. 

So when we found this scan of the Memorial to the Victims of Communism, its texture immediately grabbed our attention. The printed model's texture remains somewhat different than the original, but this print nonetheless demonstrates the potential for creating interesting surfaces in 3D printing.

## Memorial to the Victims of Communism
We chose the 3D model of this statue from the [Scan the World](https://www.myminifactory.com/object/3d-print-women-and-children-communism-memorial-london-3411) repository because of its texture. 

The statue is located across from the Victora & Albert Museum in London, in the Yalta Memorial Garden.

<br style="clear: both">

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1214.472654160829!2d-0.17383205277943448!3d51.49618705473291!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4876054244e3245f%3A0xb03d192e4dbcb138!2sYalta%20Memorial%20Garden!5e1!3m2!1sen!2sus!4v1754779449359!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
<br style="clear: both">
[London Remembers](https://www.londonremembers.com/) has created a database of memorials in the city. [Their webpage](https://www.londonremembers.com/memorials/communist-victims) for this statue offers a full description and includes the text of its plaque.

<br style="clear: both">

{% include figure.html
  class="left"
  width="45%"
  caption="Yalta Memorial Gardens. Source: London Remembers"
  image-path="images/com-gardens-view.jpg"
%}

{% include figure.html
  class="right"
  width="45%"
  caption="Close-up view of the statue. Source: London Remembers"
  image-path="/assets/images/headers/com-statue-close.jpg"
%}

<br style="clear: both">

When we sliced this model, we had a feeling it would come out with an interesting texture. It also needed support for the parts, such as the chins of the faces, that run nearly horizontal. We printed this model at High Detail, the most fine layered setting available for a 0.4mm nozzle, with a layer height of 0.08mm. The print time duration was 12 hours and 23 minutes.

{% include figure.html
  class="center"
  width="60%"
  caption="View of this model after slicing in Orca."
  image-path="images/com-statue-orca.jpg"
%}

<br style="clear: both">

After the print completed, the support material snapped off very easily. We used the 'tree support' option in Orca Slicer to produce more easily removable support. 

{% include figure.html
  class="left"
  width="40%"
  caption="Our 3D print, before snapping off the support."
  image-path="images/com-print-done.jpg"
%}

{% include figure.html
  class="right"
  width="60%"
  caption="Our 3D print, using a filament designed to mimic stone."
  image-path="images/anticommunist.png"
%}