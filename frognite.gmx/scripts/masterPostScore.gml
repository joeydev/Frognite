thisPressed = false;
canPost = true;
image_index = 0;
sound("play", frog_button, 2, false);
if(achievement_available()){
    instance_create(0,0, o_loading);
    if(!achievement_login_status()){
        playLogin();
    }
} else {
    show_message_async("Unable to contact Google Play. Please check your connection and try again.");
    global.btnPressed = false;
}
postScore();
