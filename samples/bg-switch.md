---
title: Background Switching
layout: base
date: 2024-10-24
---

## Changing Backgrounds while Scrolling
Sometimes it's fun to have the background change as a user moves through a story. We can do this, too. 

Duis ut dui dolor. Integer eu lectus at tellus accumsan euismod eget a ligula. Morbi venenatis, elit eu varius fermentum, ligula est dictum massa, sit amet ullamcorper augue nisl ut nunc. Integer placerat vitae metus vitae faucibus. Pellentesque consectetur augue ac volutpat dignissim. Sed laoreet congue ligula sit amet vestibulum. Duis vehicula erat et diam pharetra iaculis. 

Phasellus rhoncus elit rutrum magna cursus viverra. Cras lobortis pulvinar mattis. Nullam mattis varius enim vel vestibulum. Ut non blandit elit. Mauris sagittis commodo sapien, a elementum ipsum dapibus at. Nullam sapien nisl, ultrices eu felis id, blandit sagittis turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla facilisi. Ut at ullamcorper diam. Aenean nec metus orci. Fusce nunc est, interdum ut elit eget, placerat imperdiet sem. 



This is just usual text in our story. As you scroll down, a background image will come into view. 

### To the real show...

When the image gets to the top of the page, it will stop scrolling and a large text box will begin scroll over top of it. 


<!-- this is an unclosed div that needs to be closed with bg-multi-long-close-->
{% include scrollybox/bg-multi-long.html
  bg-id="bg1"
  image-url="images/fish-1.jpg"
  pre-box-space="0"
%}

Now we have a text box scrolling up over the image. At various points (clearly labled in the following text) **the background image will switch.**

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec ante ligula. Nulla fringilla ligula sit amet nisl consectetur ultricies. Mauris ac tellus eu ante lobortis rhoncus non eu nisl. Curabitur consectetur placerat commodo. Maecenas sagittis facilisis turpis vel porta. Nulla facilisi. Nam viverra eget metus eget efficitur.

Phasellus rhoncus elit rutrum magna cursus viverra. Cras lobortis pulvinar mattis. Nullam mattis varius enim vel vestibulum. Ut non blandit elit. Mauris sagittis commodo sapien, a elementum ipsum dapibus at. Nullam sapien nisl, ultrices eu felis id, blandit sagittis turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla facilisi. Ut at ullamcorper diam. Aenean nec metus orci. Fusce nunc est, interdum ut elit eget, placerat imperdiet sem. Maecenas facilisis dui risus, quis cursus leo auctor non. Praesent dolor nunc, tristique nec orci nec, mattis rhoncus est. Praesent viverra pharetra nulla quis commodo. Nullam dapibus elementum vehicula. Phasellus fermentum urna ut nisl porttitor, et aliquam odio consequat.


### IMAGE SWITCH HERE 

{% include scrollybox/bg-switch.html
  image-url="images/fish-2.jpg"
  switch-id="switch1"
  bg-id="bg1"
%}

Duis ut dui dolor. Integer eu lectus at tellus accumsan euismod eget a ligula. Morbi venenatis, elit eu varius fermentum, ligula est dictum massa, sit amet ullamcorper augue nisl ut nunc. Integer placerat vitae metus vitae faucibus. Pellentesque consectetur augue ac volutpat dignissim. Sed laoreet congue ligula sit amet vestibulum. Duis vehicula erat et diam pharetra iaculis. Etiam rutrum scelerisque nunc, ut interdum justo pellentesque sit amet. Vivamus cursus massa mauris, a finibus felis laoreet quis. Integer vel molestie neque. Quisque in ipsum eget dui mattis efficitur sed in diam. In odio sem, tincidunt non venenatis a, consequat sed ligula.

Phasellus rhoncus elit rutrum magna cursus viverra. Cras lobortis pulvinar mattis. Nullam mattis varius enim vel vestibulum. Ut non blandit elit. Mauris sagittis commodo sapien, a elementum ipsum dapibus at. Nullam sapien nisl, ultrices eu felis id, blandit sagittis turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla facilisi. Ut at ullamcorper diam. Aenean nec metus orci. Fusce nunc est, interdum ut elit eget, placerat imperdiet sem. Maecenas facilisis dui risus, quis cursus leo auctor non. Praesent dolor nunc, tristique nec orci nec, mattis rhoncus est. Praesent viverra pharetra nulla quis commodo. Nullam dapibus elementum vehicula. Phasellus fermentum urna ut nisl porttitor, et aliquam odio consequat.


### IMAGE SWITCH HERE

{% include scrollybox/bg-switch.html
  image-url="images/fish-4.jpg"
  switch-id="switch2"
  bg-id="bg1"
%}

Duis ut dui dolor. Integer eu lectus at tellus accumsan euismod eget a ligula. Morbi venenatis, elit eu varius fermentum, ligula est dictum massa, sit amet ullamcorper augue nisl ut nunc. Integer placerat vitae metus vitae faucibus. Pellentesque consectetur augue ac volutpat dignissim. Sed laoreet congue ligula sit amet vestibulum. Duis vehicula erat et diam pharetra iaculis. Etiam rutrum scelerisque nunc, ut interdum justo pellentesque sit amet. Vivamus cursus massa mauris, a finibus felis laoreet quis. Integer vel molestie neque. Quisque in ipsum eget dui mattis efficitur sed in diam. In odio sem, tincidunt non venenatis a, consequat sed ligula.
 
Phasellus rhoncus elit rutrum magna cursus viverra. Cras lobortis pulvinar mattis. Nullam mattis varius enim vel vestibulum. Ut non blandit elit. Mauris sagittis commodo sapien, a elementum ipsum dapibus at. Nullam sapien nisl, ultrices eu felis id, blandit sagittis turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla facilisi. Ut at ullamcorper diam. Aenean nec metus orci. Fusce nunc est, interdum ut elit eget, placerat imperdiet sem. Maecenas facilisis dui risus, quis cursus leo auctor non. Praesent dolor nunc, tristique nec orci nec, mattis rhoncus est. Praesent viverra pharetra nulla quis commodo. Nullam dapibus elementum vehicula. Phasellus fermentum urna ut nisl porttitor, et aliquam odio consequat.


#### Almost done
This is the end of the story, and you should see the text box scroll out of view followed by the background image.


{% include scrollybox/bg-multi-long-close.html %}

### And here we go on our way
Now we're back in our regular text flow. 

That's all for background switching. Also look at [side scrolling](bg-sidescroll), in addtion to the [basic images](images) and [scrolly boxes](bg-scrollbox).

Lorem ipsum dolor sit amet, consectetur adipiscing elit. In egestas augue sed malesuada ornare. Aliquam dignissim at est vel sagittis. Curabitur ornare nec nulla in mollis. Phasellus in lacinia mi. Vivamus vel odio imperdiet, faucibus urna id, egestas mi. Donec venenatis ut elit volutpat cursus. 

Sed vel quam nec nunc ornare vestibulum. Donec placerat, ipsum vel dignissim convallis, enim lorem pharetra est, id eleifend mauris magna commodo ligula. Sed et pharetra quam. Nullam imperdiet nisl vitae sapien vehicula, eu faucibus lectus semper. Proin nec sollicitudin orci. Vivamus sit amet nulla posuere, rutrum libero eget, porta mi. Duis gravida nisl mollis ligula tempor, vitae sodales turpis pretium. In auctor enim non mauris ornare, nec suscipit ligula venenatis.

Duis ut dui dolor. Integer eu lectus at tellus accumsan euismod eget a ligula. Morbi venenatis, elit eu varius fermentum, ligula est dictum massa, sit amet ullamcorper augue nisl ut nunc. Integer placerat vitae metus vitae faucibus. Pellentesque consectetur augue ac volutpat dignissim. Sed laoreet congue ligula sit amet vestibulum. Duis vehicula erat et diam pharetra iaculis. Etiam rutrum scelerisque nunc, ut interdum justo pellentesque sit amet. Vivamus cursus massa mauris, a finibus felis laoreet quis. 
 
Phasellus rhoncus elit rutrum magna cursus viverra. Cras lobortis pulvinar mattis. Nullam mattis varius enim vel vestibulum. Ut non blandit elit. Mauris sagittis commodo sapien, a elementum ipsum dapibus at. Nullam sapien nisl, ultrices eu felis id, blandit sagittis turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla facilisi. Ut at ullamcorper diam. 