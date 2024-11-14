if(thisPressed == true){
    thisPressed = false;
	global.btnPressed = false;
	
	if(!ute){
		if(clickedCount < 4){
			clickedCount += 1;
		} else {
			ute = true;
			instance_create(x + 10, y + 20, o_duck);
			clickedCount = 0;
			global.currentSkin = s_ute;
			
		}
	}
}

