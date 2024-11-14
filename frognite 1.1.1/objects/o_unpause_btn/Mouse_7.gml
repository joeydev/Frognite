if(thisPressed == true){
    thisPressed = false;
    image_index = 0;
    instance_destroy(o_pause_bg);
    instance_destroy(o_unpause_btn);
    global.btnPressed = false;
    __background_set( e__BG.HSpeed, 0, -global.currentSpeed * .008 );
    __background_set( e__BG.HSpeed, 1, -global.currentSpeed );
    audio_resume_sound(global.currentMusic);
    global.recentTick = get_timer();
    if(global.alteredCanShoot == true){
        global.canShoot = true;
        global.alteredCanShoot = false;
    }
    if(audio_is_paused(enemy_air)){ audio_resume_sound(enemy_air); }
    if(audio_is_paused(pickaxe)){ audio_resume_sound(pickaxe); }
    if(audio_is_paused(enemy_tree)){ audio_resume_sound(enemy_tree); }
    if(audio_is_paused(enemy_missile)){ audio_resume_sound(enemy_missile); }
    if(audio_is_paused(enemy_plane)){ audio_resume_sound(enemy_plane); }
    global.gameOn = true;
    exit;
}

