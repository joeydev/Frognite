function updateEnemies() {
	if(instance_exists(o_enemy_1)){ 
	    with (o_enemy_1){
	        x-=global.enemySpeed;
			/*if(y < 96){
				global.vertNum = 1;
			}
			if(y > 160){
				global.vertNum = -1;
			}
			y+=(global.enemySpeed * .25) * global.vertNum;
			*/
	        if(x < -80){
	            instance_destroy();
	        }
	        enemyContact = instance_place(x, y, o_frog);
	        if (enemyContact != noone){
	            dead();
	            exit;
	        }
	        bulletContact = instance_place(x, y, o_bullet);
	        if (bulletContact != noone){
	            instance_destroy();
	            instance_destroy(o_bullet);
	        }
	    }
	}
	if(instance_exists(o_enemy_2)){ 
	    with (o_enemy_2){
	        x-=global.enemySpeed;
	        if(x < -80){
	            instance_destroy();
	        }
	        enemyContact = instance_place(x, y, o_frog);
	        if (enemyContact != noone){
	            dead();
	            exit;
	        }
	        bulletContact = instance_place(x, y, o_bullet);
	        if (bulletContact != noone){
	            instance_destroy();
	            instance_destroy(o_bullet);
	        }
	    }
	}
	if(instance_exists(o_enemy_3)){ 
	    with (o_enemy_3){
	        x-=global.enemySpeed;
	        if(x < -80){
	            instance_destroy();
	        }
	        enemyContact = instance_place(x, y, o_frog);
	        if (enemyContact != noone){
	            dead();
	            exit;
	        }
	        bulletContact = instance_place(x, y, o_bullet);
	        if (bulletContact != noone){
	            instance_destroy();
	            instance_destroy(o_bullet);
	        }
	    }
	}
	if(instance_exists(o_enemy_tree)){ 
	    with (o_enemy_tree){
	        x-=global.enemySpeed;
	        if(x < -80){
	            instance_destroy();
	        }
	        enemyContact = instance_place(x, y, o_frog);
	        if (enemyContact != noone){
	            dead();
	        }
	        bulletContact = instance_place(x, y, o_bullet);
	        if (bulletContact != noone){
	            instance_destroy();
	            instance_destroy(o_bullet);
	        }
	    }
	}
	if(instance_exists(o_enemy_balloon)){ 
	    with (o_enemy_balloon){
	        x-=global.enemySpeed;
	        if(x < -80){
	            instance_destroy();
	        }
	        enemyContact = instance_place(x, y, o_frog);
	        if (enemyContact != noone){
	            dead();
	            exit;
	        }
	        bulletContact = instance_place(x, y, o_bullet);
	        if (bulletContact != noone){
	            instance_destroy();
	            instance_destroy(o_bullet);
	        }
	    }
	}



}
