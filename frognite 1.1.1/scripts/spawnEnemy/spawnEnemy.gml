function spawnEnemy() {
	//emptyLane is the CURRENTLY empty lane and should have an enemy spawned in it

	if(chooseEnemy == true){
	    randomize();
	    spawnedOne = false;
	    chooseEnemy = false;
	    chooseSplit = true;
	    bigGroundEnemy = false;
	    bigAirEnemy = false;
    
	    //One enemy always spawns in the lane that's currently empty
	    enemySpawn1 = global.emptyLane;
    
	    //Choose one of the two remaining lanes to spawn an enemy in
	    //Then set the lane that will be empty this turn
	    if(global.emptyLane == o_enemy_1){
	        enemy1Y = 96;
	        enemySpawn2 = choose(o_enemy_2, o_enemy_3);
	        if(enemySpawn2 == o_enemy_2){
	            bigAirEnemy = true;
	            enemy2Y = 160;
	            nextEmpty = o_enemy_3;
	        }
	        else{
	            enemy2Y = 224;
	            nextEmpty = o_enemy_2;
	        }
	    }
	    if(global.emptyLane == o_enemy_2){
	        enemy1Y = 160;
	        enemySpawn2 = choose(o_enemy_1, o_enemy_3);
	         if(enemySpawn2 == o_enemy_1){
	            bigAirEnemy = true;
	            enemy2Y = 96;
	            nextEmpty = o_enemy_3;
	        }
	        else{
	            bigGroundEnemy = true;
	            enemy2Y = 224;
	            nextEmpty = o_enemy_1;
	        }
	    }
	    if(global.emptyLane == o_enemy_3){
	        enemy1Y = 224;
	        enemySpawn2 = choose(o_enemy_1, o_enemy_2);
	         if(enemySpawn2 == o_enemy_1){
	            enemy2Y = 96;
	            nextEmpty = o_enemy_2;
	        }
	        else{
	            bigGroundEnemy = true;
	            enemy2Y = 160;
	            nextEmpty = o_enemy_1;
	        }
	    }
    
	    global.emptyLane = nextEmpty;
	    nextSpawn = choose(1, 2);
	}

	if(chooseSplit == true){
	    chooseSplit = false;
	    spawnNumber = choose("One", "Two");
	}

	if(spawnNumber == "Two"){
	    chooseEnemy = true;
	    chooseSplit = true;
	    if(bigGroundEnemy == true){
	        bigGroundEnemy = false;
	        bigAirEnemy = false;
	        instance_create(700, 192, o_enemy_tree);
	        exit;
	    }
	    if(bigAirEnemy == true){
	        bigGroundEnemy = false;
	        bigAirEnemy = false;
	        instance_create(700, 128, o_enemy_balloon);
	        exit;
	    }
	    instance_create(700, enemy1Y, enemySpawn1);
	    instance_create(700, enemy2Y, enemySpawn2);
	    bigGroundEnemy = false;
	    bigAirEnemy = false;
	    exit;
	}

	if(spawnNumber == "One"){
	    if(spawnedOne == false){
	        if(nextSpawn == 1){
	            instance_create(700, enemy1Y, enemySpawn1);
	            spawnHold=2;
	        }
	        else{
	            instance_create(700, enemy2Y, enemySpawn2);
	            spawnHold=1;
	        }
    
	        spawnedOneHold=true;
	        spawnTimeChange = global.spawnTimeBase * .3;
	    }
	    else{
	        if(nextSpawn == 1){
	            instance_create(700, enemy1Y, enemySpawn1);
	        }
	        else{
	            instance_create(700, enemy2Y, enemySpawn2);
	        }
        
	        spawnTimeChange = 0;
	        spawnedOneHold = false;
	        chooseSplit = true;
	        chooseEnemy=true;
	    }

	    spawnedOne = spawnedOneHold;
	    nextSpawn = spawnHold;
	}



}
