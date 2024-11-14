cooldownTime = global.levelTime - startTime;

if(cooldownTime < cdTime){
    image_yscale = 1 - (cooldownTime * greyBarNum)
}
else{
    o_gun_btn.image_index = 0;
    global.canShoot = true;
    instance_destroy();
}

