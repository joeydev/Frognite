instance_destroy(o_displayScores);
instance_destroy(o_try_again_btn);
instance_destroy(o_main_menu_btn);
instance_destroy(o_you_croaked);

if(argument0 == "killMusic"){
    audio_sound_gain(title_music, 0, 750);
    instance_create(0, 0, o_music_fade);
}
