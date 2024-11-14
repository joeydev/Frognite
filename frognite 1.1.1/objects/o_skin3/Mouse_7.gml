if(thisPressed == true){
    thisPressed = false;
    sound("play", frog_button, 2, false);
    
    resetSkinBtn();
    
    sprite_index = s_skin3_pressed;
    image_speed = .025;
    
    global.currentSkin = s_frog_3; //the image index of the frog sprite
    global.btnPressed = false;
}

