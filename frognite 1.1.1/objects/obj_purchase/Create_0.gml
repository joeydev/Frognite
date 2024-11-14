image_xscale = .4;
image_yscale = .4;

if(!achievement_login_status()){
    sprite_index = s_buy_btn_sign_in;
    checkForSignOut = false;
    checkForSignIn = true;
}
if(achievement_login_status()){
    sprite_index = s_buy_btn;
    checkForSignIn = false;
    checkForSignOut = true;
}

thisPressed = false;
image_speed = 0;