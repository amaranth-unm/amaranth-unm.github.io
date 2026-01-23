---
layout: base
title: Terrain
subtitle: 
author: Jonathan Seyfried
date: 2025-08-04
header-image: /assets/images/headers/cliff-dwellings.png
---

# Printing Terrain
This page explains how to 3D print terrain as well as exploring additional 3D features to represent borderlands concepts.

## Recommendations for 3D Printing Terrain
There are many ways to print terrain. Many include gathering and assembling relevant datafiles and transforming them into an STL file that can be loaded into slicing software (like Orca) for a 3D printer. This can be a very complex process, but allows for high levels of control and precision. 

But sometimes it's fun just to play! Luckily, there's a quick and easy way to experiment with terrain printing. To get an STL file for terrain, go to [Touch Terrain](https://touchterrain.geol.iastate.edu/main) created by Iowa State University.

Drag and resize the rectangle to capture the area you want printed. The settings on the righthand side offer various customizations. Some cartographic sources that work better for certain parts of the world. 

The most important setting is the vertical distortion. We recommend using at least some vertical distortion to add more visual umph to the printed terrain. Generally speaking, the larger the terrain selected the more vertical distortion is necessary to really see a difference across the model. There is no magic number; it really depends on what kind and how much terrain you've selected.

After you choose your settings, click on the large green button at the bottom right. From the next screen you can preview the 3D print file, in STL format, or simply download it in a zipped folder. After unzipping that folder, you will have a 3D print file ready for slicing. 

## Some examples
The following images will provide you with further recommendations for how to print terrain.

### Sandia Mountains Model to Demonstrate Printing in Two Colors and Single Color
The below image shows two prints of the same model file, one printed with three colors and the other printed with only the fossil gradient filament. The vertical distortion for this model is x30.

{% include figure.html
  class="left"
  width="100%"
  caption="Printed 3D model of the Sandias and Rio Grande Valley"
  image-path="images/two-sandia-prints.jpg"
%}
<br style="clear: both">

### Zooming Out and Printing in Four Colors
The following images in the carousel show screenshots of Touch Terrain and the printing of a model of terrain further zoomed out but with New Mexico in the center. This model demonstrates the result of using all four colors to indicate water and topography. The vertical distortion for this model is x50. 

{% assign images =
"images/sw-50-vert-ex.png,
images/touchter-preview.png,
images/multi-color-mid-print.jpg,
images/multicolor-sw-nwmex.jpg" | split: ','
%}

{% include carousel.html
images = images
id = "carouselExample"
%}


## Use Multicolor Mode to Create Visible Layers
The 3D printer in Amaranth supports multi-colored printing. This can be done by layer, so as to further illustrate elevation and topography.

On Orca Slicer, use the Paint button to change the filament color by layer height. 
{% include figure.html
  class="left"
  width="60%"
  caption="Paint by layer on Orca"
  image-path="images/painting-by-layer.jpg"
%}

For additional explanation of multi-color printing on the Anycubic Kobra 3 printer, watch the video below.

<br style="clear: both">


## Add Acrylic Paint
For this model of the Santa Fe Trail, we wanted to create something larger than the size of the build plate. First we selected a rectangular piece of terrain whose dimensions would add up to the length and width of two build plates on the printer. 
{% include figure.html
  class="left"
  width="60%"
  caption="Touch terrain screenshot of SF Trail"
  image-path="images/sftrail-touchter-select.png"
%}
<br style="clear: both">
Then we sliced the model on two plates, as shown in the image below.

{% include figure.html
  class="left"
  width="60%"
  caption="Santa Fe Trail model in Orca Slicer"
  image-path="images/printing-with-two-plates.png"
%}

{% include figure.html
  class="left"
  width="40%"
  caption="Using a projector to trace the trail"
  image-path="images/low-tech-terrain.jpg"
%}

{% include figure.html
  class="left"
  width="50%"
  caption="Model with acrylic paint pen work added"
  image-path="images/acrylic-terrain.jpg"
%}

After printing out the first half and removing it from the build plate, the printer could proceed with printing the second plate. With both plates printed, we used a projection of the Santa Fe Trail to trace its path using acrylic paint pens. This allowed for greater detail and significantly reduced the duration of the 3D printing. If we were to do this 3D print over again, we would not choose a gradient filament because this created a color difference between the top layers of the two plates.

