if(achievement_login_status() && checkForSignIn == true){
    checkForSignIn = false;
    sprite_index = s_buy_btn;
    checkForSignOut = true;
    instance_destroy(o_loading);
	
	if(!global.hasSkins){
		checkPurchase();
	}
	
	if(global.skinsAlreadyOwned){
		show_message_async("global.skinsalreadyowned = true");
		buySkin();
		exit;
	}
	
    global.btnPressed = false;
} else {
    if(!achievement_login_status() && checkForSignOut == true){
        checkForSignOut = false;
        sprite_index = s_buy_btn_sign_in;
        checkForSignIn = true;
        instance_destroy(o_loading);
        global.btnPressed = false;
    }
}

