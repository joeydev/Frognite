if(thisPressed == true){
    thisPressed = false;
    image_index = 0;
    sound("play", frog_button, 2, false);
	//GoogleMobileAds_ShowBanner();
    //global.currentTransition = "closeSkinsScreen";
    //instance_create(0, 0, o_transitions);
	
	global.iapNotice = true;
	
	global.datafile = ds_map_secure_load("frognite_data.txt");
	ds_map_replace(global.datafile, "iapNotice", global.iapNotice);
	ds_map_secure_save(global.datafile, "frognite_data.txt");
	ds_map_destroy(global.datafile);
	
	instance_destroy(o_iap_notice);
	instance_destroy();
}

