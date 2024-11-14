function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = -5; // o_across
	global.__objectDepths[1] = -5; // o_up
	global.__objectDepths[2] = -5; // o_down
	global.__objectDepths[3] = 0; // o_title
	global.__objectDepths[4] = 0; // o_skins_btn
	global.__objectDepths[5] = 0; // o_start_btn
	global.__objectDepths[6] = 0; // o_cc_btn
	global.__objectDepths[7] = -10; // o_cc_page
	global.__objectDepths[8] = 0; // o_noskin
	global.__objectDepths[9] = 0; // o_skin1
	global.__objectDepths[10] = 0; // o_skin2
	global.__objectDepths[11] = 0; // o_skin3
	global.__objectDepths[12] = 0; // o_skin4
	global.__objectDepths[13] = 0; // o_skin5
	global.__objectDepths[14] = -10000; // obj_purchase
	global.__objectDepths[15] = 10; // o_skins_screen
	global.__objectDepths[16] = 0; // o_back_btn
	global.__objectDepths[17] = 0; // o_enemy_1
	global.__objectDepths[18] = 0; // o_enemy_2
	global.__objectDepths[19] = 0; // o_enemy_3
	global.__objectDepths[20] = 0; // o_enemy_tree
	global.__objectDepths[21] = 0; // o_enemy_balloon
	global.__objectDepths[22] = 0; // o_you_croaked
	global.__objectDepths[23] = 0; // o_main_menu_btn
	global.__objectDepths[24] = 0; // o_new_high_score
	global.__objectDepths[25] = 0; // o_try_again_btn
	global.__objectDepths[26] = 0; // obj_iap
	global.__objectDepths[27] = 0; // o_submit
	global.__objectDepths[28] = -101; // o_get
	global.__objectDepths[29] = -101; // o_ready
	global.__objectDepths[30] = -101; // o_go
	global.__objectDepths[31] = 0; // o_bullet
	global.__objectDepths[32] = 0; // o_ready_btn
	global.__objectDepths[33] = 0; // o_directions
	global.__objectDepths[34] = -55000; // o_error_bg
	global.__objectDepths[35] = -55001; // o_error_btn
	global.__objectDepths[36] = -50000; // o_loading
	global.__objectDepths[37] = -105; // o_cooldown
	global.__objectDepths[38] = -100; // o_gun_btn
	global.__objectDepths[39] = -1000; // o_pause_bg
	global.__objectDepths[40] = 0; // o_bump
	global.__objectDepths[41] = -1001; // o_unpause_btn
	global.__objectDepths[42] = 0; // o_transitions
	global.__objectDepths[43] = 0; // o_ad
	global.__objectDepths[44] = 0; // o_bgSlower
	global.__objectDepths[45] = 0; // o_music_fade
	global.__objectDepths[46] = 0; // o_frogKiller
	global.__objectDepths[47] = 0; // o_displayScores
	global.__objectDepths[48] = 0; // o_scoreTracker
	global.__objectDepths[49] = 0; // o_gameStartSequence
	global.__objectDepths[50] = -6; // o_frog
	global.__objectDepths[51] = -9; // o_ghost
	global.__objectDepths[52] = 0; // mainController


	global.__objectNames[0] = "o_across";
	global.__objectNames[1] = "o_up";
	global.__objectNames[2] = "o_down";
	global.__objectNames[3] = "o_title";
	global.__objectNames[4] = "o_skins_btn";
	global.__objectNames[5] = "o_start_btn";
	global.__objectNames[6] = "o_cc_btn";
	global.__objectNames[7] = "o_cc_page";
	global.__objectNames[8] = "o_noskin";
	global.__objectNames[9] = "o_skin1";
	global.__objectNames[10] = "o_skin2";
	global.__objectNames[11] = "o_skin3";
	global.__objectNames[12] = "o_skin4";
	global.__objectNames[13] = "o_skin5";
	global.__objectNames[14] = "obj_purchase";
	global.__objectNames[15] = "o_skins_screen";
	global.__objectNames[16] = "o_back_btn";
	global.__objectNames[17] = "o_enemy_1";
	global.__objectNames[18] = "o_enemy_2";
	global.__objectNames[19] = "o_enemy_3";
	global.__objectNames[20] = "o_enemy_tree";
	global.__objectNames[21] = "o_enemy_balloon";
	global.__objectNames[22] = "o_you_croaked";
	global.__objectNames[23] = "o_main_menu_btn";
	global.__objectNames[24] = "o_new_high_score";
	global.__objectNames[25] = "o_try_again_btn";
	global.__objectNames[26] = "obj_iap";
	global.__objectNames[27] = "o_submit";
	global.__objectNames[28] = "o_get";
	global.__objectNames[29] = "o_ready";
	global.__objectNames[30] = "o_go";
	global.__objectNames[31] = "o_bullet";
	global.__objectNames[32] = "o_ready_btn";
	global.__objectNames[33] = "o_directions";
	global.__objectNames[34] = "o_error_bg";
	global.__objectNames[35] = "o_error_btn";
	global.__objectNames[36] = "o_loading";
	global.__objectNames[37] = "o_cooldown";
	global.__objectNames[38] = "o_gun_btn";
	global.__objectNames[39] = "o_pause_bg";
	global.__objectNames[40] = "o_bump";
	global.__objectNames[41] = "o_unpause_btn";
	global.__objectNames[42] = "o_transitions";
	global.__objectNames[43] = "o_ad";
	global.__objectNames[44] = "o_bgSlower";
	global.__objectNames[45] = "o_music_fade";
	global.__objectNames[46] = "o_frogKiller";
	global.__objectNames[47] = "o_displayScores";
	global.__objectNames[48] = "o_scoreTracker";
	global.__objectNames[49] = "o_gameStartSequence";
	global.__objectNames[50] = "o_frog";
	global.__objectNames[51] = "o_ghost";
	global.__objectNames[52] = "mainController";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
