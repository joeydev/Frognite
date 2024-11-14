soundNumber = 1 - abs(((192 - x) * .005));


if(x <= 480){
    if(x >= 0){
        audio_sound_gain(thisSound, soundNumber, 0);
    }
}

