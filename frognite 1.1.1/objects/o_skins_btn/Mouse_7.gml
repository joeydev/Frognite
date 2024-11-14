if(thisPressed == true){
    thisPressed = false;
    image_index = 0;
    sound("play", frog_button, 2, false);
	GoogleMobileAds_HideBanner();
    global.currentTransition = "mainMenuToSkins";
    instance_create(0, 0, o_transitions);
}

