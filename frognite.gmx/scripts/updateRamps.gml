if(instance_exists(o_across)){
    with (o_across){
        x -= global.currentSpeed;
        if(x < -80){
            instance_destroy();
        }
    }
}
if(instance_exists(o_up)){
    with (o_up){
        x -= global.currentSpeed;
        if(x < -80){
            instance_destroy();
        }
    }
}
if(instance_exists(o_down)){ 
    with (o_down){
        x -= global.currentSpeed;
        if(x < -80){
            instance_destroy();
        }
    }
}
