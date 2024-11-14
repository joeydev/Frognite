function sound(argument0, argument1, argument2, argument3) {
	//arguments: 0 = play or stop
	//           1 = name of sound
	//           2 = channel priority
	//           3 = true or false for loop

	if(argument0 == "play"){
	    audio_play_sound(argument1, argument2, argument3);
	}

	if(argument0 == "stop"){
	    audio_stop_sound(argument1);
	}



}
