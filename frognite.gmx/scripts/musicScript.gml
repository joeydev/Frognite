musicTime = (audio_sound_get_track_position(global.currentMusic) * .875) + 1;
audio_stop_sound(global.currentMusic);

if(global.musicNumber == 2){
    global.currentMusic = audio_play_sound(game_music_2, 1, true);
    audio_sound_set_track_position(global.currentMusic, musicTime);
}
if(global.musicNumber == 3){
    global.currentMusic = audio_play_sound(game_music_3, 1, true);
    audio_sound_set_track_position(global.currentMusic, musicTime);
}
if(global.musicNumber == 4){
    global.currentMusic = audio_play_sound(game_music_4, 1, true);
    audio_sound_set_track_position(global.currentMusic, musicTime);
}
if(global.musicNumber == 5){
    global.currentMusic = audio_play_sound(game_music_5, 1, true);
    audio_sound_set_track_position(global.currentMusic, musicTime);
}
