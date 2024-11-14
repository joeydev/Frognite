image_xscale = .5;
image_yscale = .5;

if(!achievement_login_status()){
    sprite_index = s_submit_sign_in;
    checkForSignOut = false;
    checkForSignIn = true;
}
if(achievement_login_status()){
    sprite_index = s_submit;
    checkForSignIn = false;
    checkForSignOut = true;
}

thisPressed = false;
image_speed = 0;

