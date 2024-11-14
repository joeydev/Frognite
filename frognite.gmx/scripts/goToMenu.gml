if(!audio_is_playing(title_music)){
    sound("play", title_music, 1, true);
}


if(argument0 == "transition"){
    instance_create(960, 80, o_title);
    instance_create(960, 210, o_start_btn);
    instance_create(960, 300, o_skins_btn);
    instance_create(645, 355, o_cc_btn);
    
    //global.currentTransition = "openMainMenu";
    //instance_create(0, 0, o_transitions);
}
else{
    instance_create(320, 80, o_title);
    instance_create(320, 210, o_start_btn);
    instance_create(320, 300, o_skins_btn);
    instance_create(5, 355, o_cc_btn);
}
