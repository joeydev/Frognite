//Go from the main menu to the skins screen
if(global.currentTransition == "mainMenuToSkins"){
    //Move the title screen objects
    o_title.x += tSpeed;
    o_skins_btn.x += tSpeed;
    o_start_btn.x += tSpeed;
    o_cc_btn.x += tSpeed;
	o_htp_btn.x += tSpeed;
    //Move the skins screen objects
    o_skins_screen.x += tSpeed;
    o_skin1.x += tSpeed;
    o_skin2.x += tSpeed;
    o_skin3.x += tSpeed;
    o_skin4.x += tSpeed;
    o_skin5.x += tSpeed;
    o_noskin.x += tSpeed;
    o_back_btn.x += tSpeed;
    if(instance_exists(obj_purchase)){ obj_purchase.x += tSpeed;}
    //Move the backgrounds
    //Move the backgrounds
    __background_set( e__BG.HSpeed, 0, tSpeed * .008 );
    __background_set( e__BG.HSpeed, 1, tSpeed );
    //When everything is done moving, set final placement of skins screen
    //objects, remove main menu objects, then end transition
    if(o_skins_screen.x <= 320){
        __background_set( e__BG.HSpeed, 1, -1.5 );
        __background_set( e__BG.HSpeed, 0, -0.012 );
        o_skins_screen.x = 320;
        o_noskin.x = 158;
        o_skin1.x = 320;
        o_skin2.x = 482;
        o_skin3.x = 158;
        o_skin4.x = 320;
        o_skin5.x = 482;
		instance_create(390, 36, o_block);
        if(global.hasSkins==true){
            o_back_btn.x = 320;
        } else {
            o_back_btn.x = 468.5;
            obj_purchase.x = 227;
        }
        
        instance_destroy(o_title);
        instance_destroy(o_start_btn);
        instance_destroy(o_skins_btn);
        instance_destroy(o_cc_btn);
		instance_destroy(o_htp_btn);
        instance_destroy(o_transitions);
		
		if(!global.iapNotice){
			instance_create_depth(room_width / 2, room_height / 2, -100, o_iap_notice);
			instance_create_depth(room_width / 2, room_height * .7, -101, o_iap_got_it_btn);
			
			
		} else { 
			global.btnPressed = false; 
		}
		
        exit;
    }
    //Increase the speed at which objects are moving
    tSpeed -= 1;
}

//Go from the skins screen to the main menu
if(global.currentTransition == "closeSkinsScreen"){
    //Move the skins screen objects
    o_skins_screen.x += tSpeed;
    o_skin1.x += tSpeed;
    o_skin2.x += tSpeed;
    o_skin3.x += tSpeed;
    o_skin4.x += tSpeed;
    o_skin5.x += tSpeed;
    o_noskin.x += tSpeed;
    o_back_btn.x += tSpeed;
    if(instance_exists(obj_purchase)){ obj_purchase.x += tSpeed;}
    //Move the main menu objects
    o_title.x += tSpeed;
    o_skins_btn.x += tSpeed;
    o_start_btn.x += tSpeed;
    o_cc_btn.x += tSpeed;
	o_htp_btn.x += tSpeed;
    //Move the background
    //Move the backgrounds
    __background_set( e__BG.HSpeed, 0, tSpeed * .008 );
    __background_set( e__BG.HSpeed, 1, tSpeed );
    //When everything is done moving, set final placement of main menu
    //objects, remove skins screen objects, then end transition
    if(o_title.x <= 320){
        __background_set( e__BG.HSpeed, 1, -1.5 );
        __background_set( e__BG.HSpeed, 0, -0.012 );
        o_title.x = 320;
        o_skins_btn.x = 630;
        o_start_btn.x = 10;
        o_cc_btn.x = 5;
		o_htp_btn.x = 240;
        instance_destroy(o_transitions);
        killSkinsScreen();
        global.btnPressed = false;
        exit;
    }
    //Increase the speed at which objects are moving
    tSpeed -= 1;
}
if(global.currentTransition == "mainMenuToDirections"){
    o_title.x += tSpeed;
    o_skins_btn.x += tSpeed;
    o_start_btn.x += tSpeed;
    o_cc_btn.x += tSpeed;
	o_htp_btn.x += tSpeed;

    o_directions.x += tSpeed;
    o_ready_btn.x += tSpeed;
    
    __background_set( e__BG.HSpeed, 0, tSpeed * .008 );
    __background_set( e__BG.HSpeed, 1, tSpeed );
    
    if(o_directions.x <= 320){
         __background_set( e__BG.HSpeed, 1, -1.5 );
        __background_set( e__BG.HSpeed, 0, -0.012 );
        o_directions.x = 320;
        o_ready_btn.x = 320;
        
        instance_destroy(o_title);
        instance_destroy(o_start_btn);
        instance_destroy(o_skins_btn);
        instance_destroy(o_cc_btn);
		instance_destroy(o_htp_btn);
        instance_destroy(o_transitions);
        global.btnPressed = false;
        exit;
    }
    tSpeed -= 1;
}
if(global.currentTransition == "directionsToMenu"){
    o_directions.x += tSpeed;
    o_ready_btn.x += tSpeed;
    
	
	o_title.x += tSpeed;
    o_skins_btn.x += tSpeed;
    o_start_btn.x += tSpeed;
    o_cc_btn.x += tSpeed;
	o_htp_btn.x += tSpeed;
    //o_bump.x += tSpeed;
   // o_gun_btn.x += tSpeed;
    //global.scoreTrackerX += tSpeed;
    //o_frog.x += tSpeed;
    //Move the backgrounds
    __background_set( e__BG.HSpeed, 0, tSpeed * .008 );
    __background_set( e__BG.HSpeed, 1, tSpeed );
    //When everything is done moving, set final placement of new game
    //objects, remove main menu objects, then end transition
    if(o_title.x <= 320){
        //draw_set_halign(fa_right);
        ///__background_set( e__BG.HSpeed, 0, 0 );
        //__background_set( e__BG.HSpeed, 1, 0 );
        //global.justBuilt.x = 256;
        //global.startRamp2.x = 192;
        //global.startRamp1.x = 128;
       // o_frog.x = 32;
       // o_bump.x = 96;
        //o_gun_btn.x = 0;
       // global.scoreTrackerX = 630;
	    __background_set( e__BG.HSpeed, 1, -1.5 );
        __background_set( e__BG.HSpeed, 0, -0.012 );
        o_title.x = 320;
        o_skins_btn.x = 630;
        o_start_btn.x = 10;
        o_cc_btn.x = 5;
		o_htp_btn.x = 240;
        instance_destroy(o_directions);
        instance_destroy(o_ready_btn);
        instance_destroy(o_transitions);
		global.btnPressed=false;
        exit;
    }
    tSpeed -= 1;
}
//Go from the main menu to a new game
if(global.currentTransition == "mainMenuToPlay"){
    //Move the main menu screen objects
    o_title.x += tSpeed;
    o_skins_btn.x += tSpeed;
    o_start_btn.x += tSpeed;
    o_cc_btn.x += tSpeed;
	o_htp_btn.x += tSpeed;
    //Move the new game objects
    //global.justBuilt.x += tSpeed;
    //global.startRamp1.x += tSpeed;
    //global.startRamp2.x += tSpeed;
    o_bump.x += tSpeed;
    o_gun_btn.x += tSpeed;
    global.scoreTrackerX += tSpeed;
    o_frog.x += tSpeed;
    //Move the backgrounds
    __background_set( e__BG.HSpeed, 0, tSpeed * .008 );
    __background_set( e__BG.HSpeed, 1, tSpeed );
    //When everything is done moving, set final placement of new game
    //objects, remove main menu objects, then end transition
    if(o_frog.x <= 32){
        draw_set_halign(fa_right);
        __background_set( e__BG.HSpeed, 0, 0 );
        __background_set( e__BG.HSpeed, 1, 0 );
        //global.justBuilt.x = 256;
        //global.startRamp2.x = 192;
        //global.startRamp1.x = 128;
        o_frog.x = 32;
        o_bump.x = 96;
        o_gun_btn.x = 0;
        global.scoreTrackerX = 630;
        instance_destroy(o_title);
        instance_destroy(o_start_btn);
        instance_destroy(o_skins_btn);
        instance_destroy(o_cc_btn);
		instance_destroy(o_htp_btn);
        instance_destroy(o_transitions);
        exit;
    }
    tSpeed -= 1;
}
//Go from the game to the game over screen
if(global.currentTransition == "gameToGameOver"){
    //Move the game objects
    if(instance_exists(o_across)){ with (o_across) x += o_transitions.tSpeed; }
    if(instance_exists(o_up)){ with (o_up) x += o_transitions.tSpeed; }
    if(instance_exists(o_down)){ with (o_down) x += o_transitions.tSpeed; }
    if(instance_exists(o_enemy_1)){ with (o_enemy_1) x += o_transitions.tSpeed; }
    if(instance_exists(o_enemy_2)){ with (o_enemy_2) x += o_transitions.tSpeed; }
    if(instance_exists(o_enemy_3)){ with (o_enemy_3) x += o_transitions.tSpeed; }
    if(instance_exists(o_enemy_tree)){ with (o_enemy_tree) x += o_transitions.tSpeed; }
    if(instance_exists(o_enemy_balloon)){ with (o_enemy_balloon) x += o_transitions.tSpeed; }
    global.theGhost.x += tSpeed;
    global.scoreTrackerX += tSpeed;
    o_gun_btn.x +=tSpeed;
    //Move the game over screen objects
    o_try_again_btn.x += tSpeed;
    o_main_menu_btn.x += tSpeed;
    o_submit.x += tSpeed;
    o_you_croaked.x += tSpeed;
    if(instance_exists(o_new_high_score)){ o_new_high_score.x += tSpeed; }
    global.displayScoresX += tSpeed;
    //Move the backgrounds
    __background_set( e__BG.HSpeed, 0, tSpeed * .008 );
    __background_set( e__BG.HSpeed, 1, tSpeed );
    //When everything is done moving, set final placement of game
    //over objects, remove game objects, then end transition
    if(o_you_croaked.x <= 320){
        __background_set( e__BG.HSpeed, 0, 0 );
        __background_set( e__BG.HSpeed, 1, 0 );
        if(instance_exists(o_enemy_1)){ instance_destroy(o_enemy_1); }
        if(instance_exists(o_enemy_2)){ instance_destroy(o_enemy_2); }
        if(instance_exists(o_enemy_3)){ instance_destroy(o_enemy_3); }
        if(instance_exists(o_enemy_tree)){ instance_destroy(o_enemy_tree); }
        if(instance_exists(o_enemy_balloon)){ instance_destroy(o_enemy_balloon); }
        instance_destroy(global.theGhost);
        instance_destroy(o_scoreTracker);
        instance_destroy(o_gun_btn);
        o_try_again_btn.x = 152.5;
        o_main_menu_btn.x = 487.5;
        o_submit.x = 320;
        o_you_croaked.x = 320;
        if(instance_exists(o_new_high_score)){ o_new_high_score.x = 610; }
        global.displayScoresX = 320;
        global.btnPressed = false;
        //adsAddBanner();
        instance_destroy(o_transitions);
        exit;
    }
    tSpeed -= 1;
}
//Go from the game over screen to the main menu
if(global.currentTransition == "gameOverToMainMenu"){
    //Move the game over objects
    o_try_again_btn.x += tSpeed;
    o_main_menu_btn.x += tSpeed;
    o_you_croaked.x += tSpeed;
    o_submit.x += tSpeed;
    if(instance_exists(o_new_high_score)){ o_new_high_score.x += tSpeed; }
    global.displayScoresX += tSpeed;
    //Move the main menu objects
    o_title.x += tSpeed;
    o_skins_btn.x += tSpeed;
    o_start_btn.x += tSpeed;
    o_cc_btn.x += tSpeed;
	o_htp_btn.x += tSpeed;
    //Move the backgrounds
    __background_set( e__BG.HSpeed, 0, tSpeed * .008 );
    __background_set( e__BG.HSpeed, 1, tSpeed );
    //When everything is done moving, set final placement of main menu
    //objects, remove skins screen objects, then end transition
    if(o_title.x <= 320){
        __background_set( e__BG.HSpeed, 1, -1.5 );
        __background_set( e__BG.HSpeed, 0, -0.012 );
        instance_destroy(o_try_again_btn);
        instance_destroy(o_main_menu_btn);
        instance_destroy(o_submit);
        instance_destroy(o_you_croaked);
        instance_destroy(o_displayScores);
        if(instance_exists(o_new_high_score)){ instance_destroy(o_new_high_score); }
        global.newHigh = false;
        o_title.x = 320;
        o_skins_btn.x = 630;
        o_start_btn.x = 10;
        o_cc_btn.x = 5;
		o_htp_btn.x = 240;
        instance_destroy(o_transitions);
        global.btnPressed = false;
        exit;
    }
    tSpeed -= 1;
}
//Go from the game over to a new game
if(global.currentTransition == "gameOverToGame"){
    //Move the game over objects
    o_try_again_btn.x += tSpeed;
    o_main_menu_btn.x += tSpeed;
    o_you_croaked.x += tSpeed;
    o_submit.x += tSpeed;
    if(instance_exists(o_new_high_score)){ o_new_high_score.x += tSpeed; }
    global.displayScoresX += tSpeed;
    //Move the new game objects
    //global.justBuilt.x += tSpeed;
    //global.startRamp1.x += tSpeed;
    //global.startRamp2.x += tSpeed;
    o_frog.x += tSpeed;
    o_bump.x += tSpeed;
    o_gun_btn.x +=tSpeed;
    global.scoreTrackerX += tSpeed;
    //Move the backgrounds
    __background_set( e__BG.HSpeed, 0, tSpeed * .008 );
    __background_set( e__BG.HSpeed, 1, tSpeed );
    //When everything is done moving, set final placement of new game
    //objects, remove main menu objects, then end transition
    if(o_frog.x <= 32){
        draw_set_halign(fa_right);
        __background_set( e__BG.HSpeed, 0, 0 );
        __background_set( e__BG.HSpeed, 1, 0 );
        //global.justBuilt.x = 256;
        //global.startRamp2.x = 192;
        //global.startRamp1.x = 128;
        o_frog.x = 32;
        o_bump.x = 96;
        o_gun_btn.x = 0;
        global.scoreTrackerX = 630;
        instance_destroy(o_try_again_btn);
        instance_destroy(o_main_menu_btn);
        instance_destroy(o_you_croaked);
        instance_destroy(o_submit);
        instance_destroy(o_displayScores);
        if(instance_exists(o_new_high_score)){ instance_destroy(o_new_high_score); }
        global.newHigh = false;
        instance_destroy(o_transitions);
        exit;
    }
    tSpeed -= 1;
}

