image_xscale += this_image_scale;
image_yscale += this_image_scale;

if(image_xscale <= .475){
this_image_scale = .00025;
}
if(image_xscale >= .5){
this_image_scale = -.00025;
}


