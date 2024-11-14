if(thisPressed == true){
    thisPressed = false;
    image_index = 0;
    sound("play", frog_button, 2, false);

/*
    global.seenDirections = true;
    global.datafile = ds_map_secure_load("frognite_data.txt");
    ds_map_replace(global.datafile, "seenDirections", global.seenDirections);
    ds_map_secure_save(global.datafile, "frognite_data.txt");
    ds_map_destroy(global.datafile);
    */
	GoogleMobileAds_ShowBanner();
    global.currentTransition = "directionsToMenu";
    instance_create(0, 0, o_transitions);
}

