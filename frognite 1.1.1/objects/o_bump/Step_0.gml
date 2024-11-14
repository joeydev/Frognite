if(global.gameOn == true){
    x-=global.currentSpeed;
    if(x < -30){
        instance_destroy();
    }
}

