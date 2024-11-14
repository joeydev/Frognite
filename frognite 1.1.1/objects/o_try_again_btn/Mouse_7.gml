if(thisPressed == true){
    thisPressed = false;
    image_index = 0;
    sound("play", frog_button, 2, false);
    global.currentTransition = "gameOverToGame";
    //GoogleMobileAds_RemoveBanner();
	GoogleMobileAds_HideBanner();
    instance_create(0, 0, o_transitions);
    //killDeadMenu("killMusic");
    //setupLvl();
}

