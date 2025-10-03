---
layout: base
title: Overview of 3D Printing
subtitle:
author: Jonathan Seyfried
date: 2025-09-15
header-image: 
---

# 3D Printing 
Most of the work of 3D printing is preparing the print file. Once you have done that, there are very few steps related to operating the machine itself. The poster above the printer tells you everything you need to know!

## Getting Started
If you just want to print something for fun, the easiet way is to grab some models from an existing site.

## Orca Slicing
The Orca software on Amaranth's iMacs creates a file with instrcutions for how to print an object for a particular printer. Our software is set to default to the printer we have: the Anycubic Kobra 3. 

Orca is "slicing" software, which takes a scan of an object and slices it up like slicing an onion. These slices are directions for the printer are where to extrude filament for each slice. The printer layers slice after slice to build an actual thing.

There are zillions of 3D scans or fabricated objects you can print. The scans have data about the object, but they don't say anything about how they should be printed. You need to slice them yourself because we need to slice them for our printer.


## Slicing your 3D object
- Rotate it and snap it to the build plate, it should look like this:
Image: Orca_slicer1

- Adjust the dimensions and any other print settings. 
- Click “Slice plate” at the top of the screen.

Make sure that the file is saved in the file type of .gcode and it should look like this after the software slices the object. 
Image: Orca_slicer2

Save the .gcode file to a USB drive and then insert that drive into the port on the printer. 
Before printing, check:
- The nozzle for any filament buildup
- The tubes for any breaks in the filament
- Use the touchpad to select your print file from the USB drive. Watch the printing for at least the first two layers of the object. 

Cancel the print if:
- The filament fails to load
- The filament begins to bubble over the nozzle
- The filament fails to adhere to the build plate

After the first three layers have printed successfully, you can leave the printer and return when the print is completed. Make a note to yourself--maybe a reminder on your phone--when to return to pick up the completed print and turn off the printer.

