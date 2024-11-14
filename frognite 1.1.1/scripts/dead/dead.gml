function dead() {
	global.gameOn = false;
	global.currentSpeed = 0;
	global.canShoot = false;
	global.btnPressed = true;

	global.finalScore = floor(global.levelTime * 100);

	//If there's a new high score, save it to the data file
	if(floor(global.levelTime * 100) > global.highScore){
	    global.highScore = floor(global.levelTime * 100);
	    global.newHigh = true;
    
	    global.datafile = ds_map_secure_load("frognite_data.txt");
	    ds_map_replace(global.datafile, "highScore", global.highScore);
	    ds_map_secure_save(global.datafile, "frognite_data.txt");
	    ds_map_destroy(global.datafile);
	}

	if(audio_is_playing(enemy_air)){ audio_stop_sound(enemy_air); }
	if(audio_is_playing(pickaxe)){ audio_stop_sound(pickaxe); }
	if(audio_is_playing(enemy_tree)){ audio_stop_sound(enemy_tree); }
	if(audio_is_playing(enemy_missile)){ audio_stop_sound(enemy_missile); }
	if(audio_is_playing(enemy_plane)){ audio_stop_sound(enemy_plane); }

	sound("stop", global.currentMusic, "null", "null");
	sound("play", die, 2, false);

	if(instance_exists(o_bullet)){ instance_destroy(o_bullet); }
	if(instance_exists(o_cooldown)){ instance_destroy(o_cooldown); }
	instance_create(0, 0, o_frogKiller);
	instance_create(0, 0, o_bgSlower);
	//adsAddBanner();
	GoogleMobileAds_ShowBanner();


}
