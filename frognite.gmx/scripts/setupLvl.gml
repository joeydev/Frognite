global.currentSpeed = 0;
global.speedCo = 0;
global.buildSpeed = 0;
global.levelTime = 0;
global.currentHeight = 1;
instance_create(0, 0, o_scoreTracker);

instance_create(640, 0, o_gun_btn);

//global.justBuilt = instance_create(896, 168, o_across);
//global.startRamp2 = instance_create(832, 240, o_up);
//global.startRamp1 = instance_create(768, 240, o_across);
instance_create(736, 256, o_bump);

//global.nextBuildY = global.justBuilt.y;
//global.nextBuildX = global.justBuilt.x + (global.halfBuildWidth * 2);

//Spawn the frog
global.theFrog = instance_create(672, 256, o_frog);

//Set the frog to the current skin
global.theFrog.sprite_index = global.currentSkin;
