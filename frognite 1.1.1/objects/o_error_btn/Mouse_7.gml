if(thisPressed == true){
    thisPressed = false;
    image_index = 0;
    sound("play", frog_button, 2, false);
    instance_destroy(o_error_bg)
    instance_destroy();
}

