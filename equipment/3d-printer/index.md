---
layout: base
title: 3D Printer Guide
subtitle:
author: Jonathan Seyfried
date: 2025-06-19
---

## Preparing the Print File
- Open the Orca app and ensure that the Anycubic Kobra 3 printer is selected. The printer settings should look like the below screenshot.
{% include figure.html
  class="left"
  width="60%"
  caption="Printer settings in Orca Slicer"
  image-url="/images/orca-printer-settings.png"
%}
  <br style="clear: both">
- Ensure the filament type matches the one loaded in the printer.
- Import the file for your model, usually in 3MF or STL format.
- After rotating it and snapping it to the build plate, it should look like what you see in the below screenshot.
{% include figure.html
  class="left"
  width="60%"
  caption="Printer settings in Orca Slicer"
  image-url="/images/Orca-slicer1.png"
%}
  <br style="clear: both">
- Adjust the print settings (e.g., layer height, infill percentage) based on your desired print quality.
- Click 'Slice plate' at the top right corner of the screen. After the slicing is complete, it should look like the screenshot below.
{% include figure.html
  class="left"
  width="60%"
  caption="Model after slicing"
  image-url="/images/Orca-slicer2.png"
%}
  <br style="clear: both">
- You can preview each layer, and nozzle position within each layer, by moving the toggle bars at the right and bottom of the screen. Save the sliced file as a .gcode file to an SD card or USB drive for printing.

## Printing Process

1. Insert the SD card or USB drive into the Anycubic Kobra 3 printer.
2. After clicking 'Print,' select the file you want to print from the menu on the touchpad.
3. Confirm or select the filament for your model and then click 'Print.'
4. View the preview of the model on the touchpad and click 'Print.'
5. Monitor the first two layers to ensure that the filament extrudes smoothly and that model sticks to the plate successfully.
6. Cancel the print if:
    - The filament fails to load
    - The filament begins to bubble over the nozzle
    - The filament fails to adhere to the build plate
7. After the first two layers have successfullly printed, you can leave and return to pick up the completed print.
8. Use a plastic scraper to dislodge the model from the build plate.
9. Clean off the build plate and turn off the printer and spools.
10. Detach support material using pliers or by hand.

## Troubleshooting Common Issues

- If the first layer fails to adhere, with some of the filament popping off the build plate or coming loose entirely, you will need to cancel the print and start again. We recommend altering the model in Orca Slicer so that the first layer has a larger surface area on the build plate. Sometimes this can be accomplished by dropping the model on its Z-axis so that what used to be the first few layers appear below the build plate and get skipped during the printing.
- If the printing stops and an error message comes up on the touchpad about the filament not extruding or loading properly, click 'Resume.' The printer usually does another round of preparatory extrusion and the printing then proceeds smoothly after that. If you get the same error a second time, then cancel the print and seek assistance.
- Sometimes a spool of filament gets wound in a way that causes the filament to cross over itself during a print. If this happens, unwind the spool and rewind it. You can do this while the filament is still loaded. Click 'Resume' on the touchpad.

For more detailed troubleshooting, refer to the [Anycubic Kobra 3 manual](https://www.anycubic.com/pages/download) or the [Orca Slicer documentation](https://github.com/SoftFever/OrcaSlicer/wiki).

## Tutorial Videos on Orca Slicer and the Anycubic Kobra 3 Printer

### Orca Video

<iframe src="https://www.youtube.com/embed/cquTCpz1V74" title="Orca Slicer getting started guide: A slicer for all of your 3D printers" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

### Anycubic Video

<iframe src="https://www.youtube.com/embed/2CurchA4HT8" title="AnyCubic Tries Multicolor: The AnyCubic Kobra 3 Combo" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>