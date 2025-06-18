---
title: Getting Started
layout: base
date: 2024-10-24
---

{% include jumbotron.html
  height="50"
  image-url="images/flowers-3.jpg"
  title="Background scroll boxes"
%}

Scrolly boxes are pretty much what they sound like. Boxes with text that scroll over a fixed background image. 


### Scrolly boxes on REVEALED images
The [images](images) page shows a basic revealed background image. The image seems to be "revealed" as the user scrolls, and then once it's fully in view, it scrolls away. 

**We can also have textboxes scroll up past the image after the image fully comes into view.**

Nunc posuere metus quis tempus dapibus. Sed hendrerit dapibus risus, gravida lacinia erat placerat ut. Sed purus ante, rutrum in libero sed, pretium laoreet mauris. Pellentesque sit amet viverra est. Mauris mi orci, ullamcorper vitae arcu nec, pretium vestibulum lorem. In pulvinar libero at ex venenatis vestibulum. Sed nec mauris maximus, ornare magna eu, bibendum ligula. Proin a justo non tellus consequat dapibus vel sit amet elit.


{% include scrollybox/bg.html
  height="220"
  image-url="images/hike-3.jpg"
  pre-box-space="100"
  box-content=" 
       Look! Now there is a text box scrolling by, visible after the whole background came into view. 
       <hr>
       Once this text box gets near the top of the page, you'll start to see the next section emerge at the bottom of the screen, and cover up the background image that was important for the scrolly box."
%}


### Scrolly boxes on fixed images
We just saw how to have a large background image "revealed" by the page scrolling up off of it.

As you can see below, you can also have a large backgrtound image scroll into view (instead of remaining still).

The image freezes it when it gets to the top of the viewport, while a textbox can scroll past, grabbing the background with it as it scrolls away. Check it out!



{% include scrollybox/bg-sticky.html
  height="220"
  image-url="images/hike-4.jpg"
  pre-box-space="100"
  box-content="
       This text box is scrolling. And as soon as it leaves the viewport, the background image will begin to scroll away. 
<hr/>
       This text box is scrolling. And as soon as it leaves the viewport, the background image will begin to scroll away. 
  <p/>     
       This text box is scrolling. And as soon as it leaves the viewport, the background image will begin to scroll away. 
    <p/>   
       This text box is scrolling. And as soon as it leaves the viewport, the background image will begin to scroll away.   "
%}


## That's a wrap 
That's all for basic scrolly boxes. We can also do [background switching](bg-switch) and [side scrolling](bg-sidescroll), in addtion to the [basic images](images).

Lorem ipsum dolor sit amet, consectetur adipiscing elit. In egestas augue sed malesuada ornare. Aliquam dignissim at est vel sagittis. Curabitur ornare nec nulla in mollis. Phasellus in lacinia mi. Vivamus vel odio imperdiet, faucibus urna id, egestas mi. Donec venenatis ut elit volutpat cursus. Sed vel quam nec nunc ornare vestibulum. Donec placerat, ipsum vel dignissim convallis, enim lorem pharetra est, id eleifend mauris magna commodo ligula. Sed et pharetra quam. Nullam imperdiet nisl vitae sapien vehicula, eu faucibus lectus semper. Proin nec sollicitudin orci. Vivamus sit amet nulla posuere, rutrum libero eget, porta mi. Duis gravida nisl mollis ligula tempor, vitae sodales turpis pretium. In auctor enim non mauris ornare, nec suscipit ligula venenatis.

Ut ullamcorper ornare erat, sed ultricies arcu laoreet quis. Donec dapibus, elit id accumsan semper, metus arcu rutrum dui, eu pharetra velit eros sit amet mi. Ut risus metus, malesuada sit amet ullamcorper convallis, blandit nec quam. Nulla feugiat tincidunt mauris. Proin sed justo in est mattis vestibulum. Aliquam posuere, justo non lobortis rutrum, nibh tortor lobortis ipsum, ut aliquet enim tortor a felis. 