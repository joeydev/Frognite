if(achievement_login_status() && checkForSignIn == true){
    checkForSignIn = false;
    sprite_index = s_submit;
    checkForSignOut = true;
    instance_destroy(o_loading);
    global.btnPressed = false;
}
if(!achievement_login_status() && checkForSignOut == true){
    checkForSignOut = false;
    sprite_index = s_submit_sign_in;
    checkForSignIn = true;
    instance_destroy(o_loading);
    global.btnPressed = false;
}

