if(global.gameOn == true){
    if(mouse_x > 64){
		if(mouse_y < 180){
			ghost("up");
            if(global.currentHeight != 2){
                global.currentRamp = "up";
            }
        }
        else{
            ghost("down");
            if(global.currentHeight != 0){
                global.currentRamp = "down";
            }
        }
		}
}