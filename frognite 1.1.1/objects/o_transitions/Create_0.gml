tSpeed = 6;

//Spawn the skins screen objects off screen
if(global.currentTransition == "mainMenuToSkins"){
    gotoSkins();
    __background_set( e__BG.HSpeed, 0, 0 );
    __background_set( e__BG.HSpeed, 1, 0 );
}
if(global.currentTransition == "mainMenuToDirections"){
    __background_set( e__BG.HSpeed, 0, 0 );
    __background_set( e__BG.HSpeed, 1, 0 );
    instance_create(960, 180, o_directions);
    instance_create(960, 332, o_ready_btn);
}
if(global.currentTransition == "directionsToMenu"){
    __background_set( e__BG.HSpeed, 0, 0 );
    __background_set( e__BG.HSpeed, 1, 0 );
    //audio_sound_gain(title_music, 0, 1000);
   // instance_create(0, 0, o_music_fade); 
    //setupLvl();
    //instance_create(0, 0, o_gameStartSequence);
	goToMenu("transition");
}
//Spawn the main menu objects off screen
if(global.currentTransition == "closeSkinsScreen"){
    goToMenu("transition");
    __background_set( e__BG.HSpeed, 0, 0 );
    __background_set( e__BG.HSpeed, 1, 0 );
}
//Spawn the new game objects off screen
if(global.currentTransition == "mainMenuToPlay"){
    audio_sound_gain(title_music, 0, 1000);
    instance_create(0, 0, o_music_fade); 
    setupLvl();
    instance_create(0, 0, o_gameStartSequence);
    __background_set( e__BG.HSpeed, 0, 0 );
    __background_set( e__BG.HSpeed, 1, 0 );
}
//Spawn the game over menu objects off screen
if(global.currentTransition == "gameToGameOver"){ //Objects spawn +740 instead of 640
    audio_resume_sound(title_music);
    audio_sound_gain(title_music, 1, 1000);
    instance_create(892.5, 275, o_try_again_btn);
    instance_create(1227.5, 275, o_main_menu_btn);
    instance_create(1060, 275, o_submit);
    instance_create(0, 0, o_displayScores);
    instance_create(1060, 80, o_you_croaked);
    if(global.newHigh == true){
        instance_create(1350, 185, o_new_high_score);
    }
}
//Spawn main menu objects
if(global.currentTransition == "gameOverToMainMenu"){
    adsRemoveBanner();
    goToMenu("transition");
}
//You get the idea
if(global.currentTransition == "gameOverToGame"){
    adsRemoveBanner();
    audio_sound_gain(title_music, 0, 1000);
    instance_create(0, 0, o_music_fade);
    setupLvl();
    instance_create(0, 0, o_gameStartSequence);
    __background_set( e__BG.HSpeed, 0, 0 );
    __background_set( e__BG.HSpeed, 1, 0 );
}

