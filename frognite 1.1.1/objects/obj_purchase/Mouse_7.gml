if(thisPressed == true){
    thisPressed = false;
    image_index = 0;
    sound("play", frog_button, 2, false);
    
    if(achievement_available()){
    instance_create(0,0, o_loading);
        if(!achievement_login_status() && checkForSignIn==true){
            playLogin();
        }
        if(achievement_login_status() && checkForSignOut==true){
            buySkins();
        }
    } else {
        show_message_async("Unable to contact Google Play. Please check your connection and try again.");
        instance_destroy(o_loading);
        global.btnPressed = false;
    }
}