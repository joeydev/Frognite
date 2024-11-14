if(thisPressed == true){
    thisPressed = false;
    image_index = 0;
    sound("play", frog_button, 2, false);
    //instance_create(0, 0, o_bgSlower);
GoogleMobileAds_HideBanner();
    global.currentTransition = "mainMenuToDirections";
    instance_create(0, 0, o_transitions);
    //setupLvl();
    //killMenu("stopMusic");
}

