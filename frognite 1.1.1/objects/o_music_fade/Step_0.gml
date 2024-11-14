if(audio_sound_get_gain(title_music) == 0){
audio_pause_sound(title_music);
instance_destroy(o_music_fade);
}

