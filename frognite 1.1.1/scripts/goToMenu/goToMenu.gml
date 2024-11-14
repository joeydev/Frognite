function goToMenu(argument0) {
	if(!audio_is_playing(title_music)){
	    sound("play", title_music, 1, true);
	}


	if(argument0 == "transition"){
	    instance_create(960, 80, o_title);
	    instance_create(650, 230, o_start_btn);
	    instance_create(1270, 230, o_skins_btn);
	    instance_create(645, 355, o_cc_btn);
		instance_create(880, 230, o_htp_btn);
    
	    //global.currentTransition = "openMainMenu";
	    //instance_create(0, 0, o_transitions);
	}
	else{
	    instance_create(320, 80, o_title);
	    instance_create(10, 230, o_start_btn);
	    instance_create(630, 230, o_skins_btn);
	    instance_create(5, 355, o_cc_btn);
		instance_create(240, 230, o_htp_btn);
	}



}
