//seqCurrentTime = (get_timer() * .000001) - seqStartTime;

if(seqGapTime >= .75){
    if(stepNum == 4){
        endStartSeq();
		exit;
    }
    else{
        if(stepNum == 0){
            sound("play", open_jump_1, 3, false);
        }
        if(stepNum == 1){
            instance_create(320, -60, o_get);
            global.theFrog.x += 64;
            global.theFrog.y -= 8;
            instance_create(160, 208, o_ghost);
            ghost("up");
            
            //global.theFrog.image_index += jumpNum;
            jumpNum = jumpNum * -1;
            sound("play", open_jump_2, 3, false);
        }
        
        if(stepNum == 2){
            instance_create(320, -60, o_ready);
            global.currentRamp = "up";
            global.justBuilt = instance_create(128, 240, o_up);
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
            global.theFrog.x = (global.justBuilt.x + global.halfBuildWidth) + global.frogAdjust;
            sound("play", open_jump_3, 3, false);
        }
        if(stepNum == 3){
            instance_create(320, -60, o_go);
            global.theFrog.image_angle = 0;
            global.justBuilt = instance_create(global.nextBuildX, global.nextBuildY, o_across);
            global.nextBuildY = global.justBuilt.y;
            global.nextBuildX = global.justBuilt.x + (global.halfBuildWidth * 2);
            ghost("across");
            global.theGhost.x = global.nextBuildX + global.halfBuildWidth;
            global.theGhost.y = global.nextBuildY + global.ghostYNumber;

            global.theFrog.y = global.justBuilt.y;
            global.theFrog.x = (global.justBuilt.x + global.halfBuildWidth) + global.frogAdjust;
            global.theFrog.image_index += jumpNum;
            jumpNum = jumpNum * -1;
            sound("play", open_jump_4, 3, false);
        }
        
        //global.theFrog.x += 64;
        //seqLastStepTime = seqCurrentTime;
        stepNum += 1;
        seqGapTime = 0;
    }
}

seqGapTime += delta_time * .000001;