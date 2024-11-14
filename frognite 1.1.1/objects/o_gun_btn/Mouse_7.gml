if(thisPressed == true && global.gameOn == true){
    thisPressed = false;
    global.canShoot = false;
    //global.lastShot = global.levelTime;
    
    sound("play", shoot, 1, false);
    instance_create(global.theFrog.x + 16, global.theFrog.y - 16, o_bullet);
    image_index = 2;
    instance_create(0, 360, o_cooldown);
    global.btnPressed = false;
}

