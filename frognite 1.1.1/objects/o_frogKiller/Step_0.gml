global.theFrog.y += ySpeed;
global.theFrog.x += xSpeed;
global.theFrog.image_angle += 8;

if(ySpeedInc < 2){
    ySpeedInc = ySpeedInc * 1.15;
}
xSpeedInc = xSpeedInc * .25;

ySpeed += ySpeedInc;
xSpeed -= xSpeedInc;

if(global.theFrog.y > 1200){
    instance_destroy(o_frogKiller);
    instance_destroy(global.theFrog);
    //gotoDeadScreen();
    global.currentTransition = "gameToGameOver";
    instance_create(0, 0, o_transitions);
}

