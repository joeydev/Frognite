function startGame() {
	global.lastSpawnedTime = -1;
	global.currentSpeed = 1;
	global.buildSpeed = 1.5;
	global.emptyLane = o_enemy_2; //Spawn enemy in 2 at start
	mainController.chooseEnemy = true;
	global.currentHeight = 1; 
	global.spawnTimeBase = 5000;
	global.jumpJets = 0;
	global.falling = false;
	//global.lastShot = -5;

	global.musicNumber = 1;
	global.currentMusic = audio_play_sound(game_music_1, 1, true);

	//Spawn the ghost ramp at the starting point
	//instance_create(256, 224, o_ghost);

	global.levelStartTime = get_timer();

	__background_set( e__BG.HSpeed, 1, -1.5 );
	__background_set( e__BG.HSpeed, 0, -.0125 );

	//o_frog.mask_index = s_frog_0;
	global.btnPressed = false;
	global.canShoot = true;
	global.recentTick = get_timer();
	mainController.spawnTimeChange = 0;
	global.gameOn = true;



}
