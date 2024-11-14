instance_destroy(o_title);
instance_destroy(o_start_btn);
instance_destroy(o_skins_btn);
instance_destroy(o_cc_btn);

if(argument0 == "toSkins"){
    gotoSkins();
}

if(argument0 == "startGame"){
    audio_sound_gain(title_music, 0, 1000);
    instance_create(0, 0, o_music_fade); 
}
