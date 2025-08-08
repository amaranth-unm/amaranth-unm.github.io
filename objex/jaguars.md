---
layout: base
title: Jaguars
subtitle:
author: Jonathan Seyfried
date: 2025-08-03
---

## Jaguars: A Demonstration of Detail Settings on the 3D Printer

For our [instructions on 3D scanning](https://amaranth-unm.github.io/equipment/3d-scanner/), we used a replica of a jaguar purchased at the museum store of the Museo Nacional de Antropología in Mexico City. We now want to demonstrate how changing the detail setttings on Orca Slicer will produce different outcomes.

We printed the jaguar three times, selecting three of the print quality settings: 
1. High Detail at 0.08mm layer height
2. Optimal at 0.16mm layer height
3. Draft at 0.24mm layer height

The printer can extrude filament at different volumes. The print quality setting affects the level of fineness or coarsness for the model by altering the size of each layer the printer creates. Increasing the number of layers makes each horizontal slice of the model thinner, reducing the coarseness of the end product. 

Why not always opt for the most fine print setting? You make a tradeoff in print time duration. For our jaguar examples below, the difference between Draft and High Detail was over an hour. Remember that as your model size increases, the difference in print time duration between the print quality settings also increases.


{% include figure.html
  class="left"
  width="30%"
  caption="Printed at High Detail, 132 minutes"
  image-url="images/jag-high.jpg"
%}

{% include figure.html
  class="center"
  width="30%"
  caption="Printed at Optimal, 92 minutes"
  image-url="images/jag-optimal.jpg"
%}

{% include figure.html
  class="right"
  width="30%"
  caption="Printed at Draft, 70 minutes"
  image-url="images/jag-draft.jpg"
%}