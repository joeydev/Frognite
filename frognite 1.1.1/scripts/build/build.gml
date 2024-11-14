function build(argument0) {
	//build an across ramp
	if(argument0 == "across"){
	    global.justBuilt = instance_create(global.nextBuildX, global.nextBuildY, o_across);
	    global.nextBuildX = global.justBuilt.x + (global.halfBuildWidth * 2);
    
	    global.theFrog.y = global.justBuilt.y;
	    global.theFrog.image_angle = 0;
	    global.frogAdjust = 0;
	    global.frogYNext = 0;
	    global.theFrog.image_index += jumpNum;
	    jumpNum = jumpNum * -1;
    
	    global.nextBuildY = global.justBuilt.y;
    
	    global.currentGhost = 0;
	    ghost("null");
	    global.theGhost.x = global.nextBuildX + global.halfBuildWidth;
	    global.theGhost.y = global.nextBuildY + global.ghostYNumber;
	}

	//build an up ramp
	if(argument0 == "up"){
	    global.justBuilt = instance_create(global.nextBuildX, global.nextBuildY, o_up);
	    global.nextBuildY = global.justBuilt.y - (global.halfBuildHeight * 2);
	    global.nextBuildX = global.justBuilt.x + (global.halfBuildWidth * 2);
    
	    global.theFrog.y = global.justBuilt.y - 34;
	    global.frogAdjust = -2.5; //this is manual
	    global.theFrog.image_angle = 45;
	    global.theFrog.image_index += jumpNum;
	    jumpNum = jumpNum * -1;
	    global.frogYNext = -global.halfBuildHeight;
    
	    global.currentHeight += 1;
	    global.currentRamp = "across";
    
	    global.currentGhost = 0;
	    ghost("null");
	    global.theGhost.x = global.nextBuildX + global.halfBuildWidth;
	    global.theGhost.y = global.nextBuildY + global.ghostYNumber;
	}

	//build a down ramp
	if(argument0 == "down"){
	    global.justBuilt = instance_create(global.nextBuildX, global.nextBuildY, o_down);
	    global.nextBuildY = global.justBuilt.y + (global.halfBuildHeight * 2);
	    global.nextBuildX = global.justBuilt.x + (global.halfBuildWidth * 2);
    
	    global.theFrog.y = global.justBuilt.y + 29;
	    global.frogAdjust = 2.5; //this is manual
	    global.theFrog.image_angle = -45;
	    global.theFrog.image_index += jumpNum;
	    jumpNum = jumpNum * -1;
	    global.frogYNext = global.halfBuildHeight;
    
	    global.currentHeight -= 1;
	    global.currentRamp = "across";
    
	    global.currentGhost = 0;
	    ghost("null");
	    global.theGhost.x = global.nextBuildX + global.halfBuildWidth;
	    global.theGhost.y = global.nextBuildY + global.ghostYNumber;
	}
	/*if(argument0 == "jump"){
		global.jumping = true;
		global.jumpJets += -10;
		global.theFrog.image_index = 1;
	}*/
	sound("play", jump, 3, false);


}