instance_destroy(o_frogKiller);
instance_destroy(global.theGhost);
instance_destroy(o_across);
instance_destroy(o_up);
instance_destroy(o_down);
instance_destroy(o_enemy_1);
instance_destroy(o_enemy_2);
instance_destroy(o_enemy_3);
instance_destroy(global.theFrog);
instance_destroy(o_scoreTracker);

audio_resume_sound(title_music);
audio_sound_gain(title_music, 1, 1000);

instance_create(220, 250, o_try_again_btn);
instance_create(420, 250, o_main_menu_btn);
instance_create(0, 0, o_displayScores);
instance_create(320, 100, o_you_croaked);
