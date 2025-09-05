---
layout: base
title: 3D Scanning overview
subtitle: A guide to making digital twins
author: Jonathan Seyfried
date: 2025-04-01
---

# {{page.title}}

## {{page.subtitle}}

<!--
### Table of Contents
* TOC
{:toc}
-->

Video: <iframe width="853" height="480" src="https://www.youtube.com/embed/YNpmpQmFLzo" title="Revopoint POP3 Review - 3D Scanner" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

Revopoint 3D Support: https://support.revopoint3d.com/hc/en-us

Open the Revoscan application on the computer and connect the scanner through its USB cable. Here’s what it should look like:

{% include figure.html
  class="img-right"
  width="60%"
  caption="An example setup before scanning"
  image-url="equipment/3d-scanner/images/3Dphysicalsetup.jpg"
%}

- Complete scans for each side of the object. You will then have multiple scan files listed on the lefthand side of the application screen.

- Go through each of these and delete unwanted material. For the scan in the pictured below, we deleted the ring around the circular base.


Image: Revoscan1.png

Click through the Fusion instructions for each of the scans.
Once fused, the multiple scans can then be merged. Check that enough of the model (over 30%) overlaps, such as in the image below. Then click “Generate Model.”
Image: Revoscan2.png
After merging, you can create the Mesh for the object. Check your model for holes to fill and erroneous extra material. 


### Exporting your file
- If you are intending to print the model on the 3D printer, choose STL file. 
- If you want the model only for viewing in 3D in a virtual environment, choose GLTF.