if(global.gameOn == true){
    if (os_is_paused()){
        global.gameOn = false;
        if(global.canShoot == true){
            global.canShoot = false;
            global.alteredCanShoot = true;
        }
        __background_set( e__BG.HSpeed, 0, 0 );
        __background_set( e__BG.HSpeed, 1, 0 );
        audio_pause_sound(global.currentMusic);
        if(audio_is_playing(enemy_air)){ audio_pause_sound(enemy_air); }
        if(audio_is_playing(pickaxe)){ audio_pause_sound(pickaxe); }
        if(audio_is_playing(enemy_tree)){ audio_pause_sound(enemy_tree); }
        if(audio_is_playing(enemy_missile)){ audio_pause_sound(enemy_missile); }
        if(audio_is_playing(enemy_plane)){ audio_pause_sound(enemy_plane); }
        instance_create(320, 180, o_pause_bg);
        instance_create(210, 180, o_unpause_btn);
        exit;
    }
    
    updateRamps();
    
	//show_debug_message(o_frog.mask_index);
	
	global.nextBuildX = global.justBuilt.x + (global.halfBuildWidth * 2);
    global.theGhost.x = global.nextBuildX + global.halfBuildWidth;
    global.theGhost.y = global.nextBuildY + global.ghostYNumber;
    
    if(global.justBuilt.x <= 128){
        build(global.currentRamp);
    }
    
    global.theFrog.x = (global.justBuilt.x + global.halfBuildWidth) + global.frogAdjust;
	/*} else {
		global.theGhost.x = -500;
		global.theGhost.y = -500;
		//global.theFrog.x += global.currentSpeed;
		global.theFrog.y += global.jumpJets;
		global.jumpJets += .3;
		if(global.jumpJets > 0){ global.falling = true; }
		if(global.falling){
			if(global.theFrog.y >= 172){
				global.currentRamp = "across";
				global.jumping = false;
				global.falling = false;
				global.jumpJets = 0;
				global.nextBuildX = 192;
				global.nextBuildY = 176;
				global.justBuilt = instance_create(global.nextBuildX, global.nextBuildY, o_across);
				global.theFrog.x = (global.justBuilt.x + global.halfBuildWidth) + global.frogAdjust;
				global.theFrog.y = global.justBuilt.y;
				//global.theFrog.image_index = 0;
			}
		}
	}*/
    
    //Update time spent on level (in seconds)
    cTime = get_timer();
    global.levelTime += (cTime - global.recentTick) * .000001;
    global.recentTick = cTime;
    
    /*if(global.levelTime - global.lastShot > 5){ 
        global.canShoot = true
    }
    else{
        global.canShoot = false;
    }*/
    
    
    //Update time since last enemy spawned (in seconds)
    gapTime = (global.levelTime - global.lastSpawnedTime);

    //Check if an enemy needs to spawn, then spawn it, then reset lastSpawnedTime
    if(global.spawnTimeBase >= .75){
        global.spawnTimeBase = 3.3 - (global.currentSpeed * .525); //change enemy spawning
    }

    if(gapTime >= global.spawnTimeBase - spawnTimeChange){
        spawnEnemy();
        global.lastSpawnedTime = global.levelTime;
    }
    
    if(global.musicNumber != 5){
        if(global.levelTime > (global.musicNumber * 12.5)){
            if(global.frogPlaying == false){
                global.frogPlaying = true;
                audio_pause_sound(global.currentMusic);
                frogSound = audio_play_sound(frog_noise, 1, false);
            }
            
            if(!audio_is_playing(frogSound)){
                global.musicNumber += 1;
                musicScript();
                global.frogPlaying = false;
            }
        }
    }
    
    if(global.currentSpeed < 6){
        global.currentSpeed = (global.levelTime * (.1 + global.speedCo)) + 2; //change frog speed
        global.enemySpeed = global.currentSpeed * 1.05;
        if(global.speedCo <= .05){
            global.speedCo = global.levelTime * .0015;
		}
        show_debug_message(global.currentSpeed);
    }
    
    updateEnemies();
    
    __background_set( e__BG.HSpeed, 0, -global.currentSpeed * .008 );
    __background_set( e__BG.HSpeed, 1, -global.currentSpeed );
}

/* */
/*  */
