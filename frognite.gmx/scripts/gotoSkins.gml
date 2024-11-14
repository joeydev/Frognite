instance_create(960, 178, o_skins_screen);

global.noskin = instance_create(798, 123.5, o_noskin); //No skin, +640
global.skin1 = instance_create(960, 123.5, o_skin1);
global.skin2 = instance_create(1122, 123.5, o_skin2);
global.skin3 = instance_create(798, 232.5, o_skin3);
global.skin4 = instance_create(960, 232.5, o_skin4);
global.skin5 = instance_create(1122, 232.5, o_skin5);

if(global.hasSkins == true){
    
    instance_create(960, 323.5, o_back_btn);
    
    if(global.currentSkin == s_frog_0){
         global.noskin.sprite_index = s_noskin_pressed;
        global.noskin.image_speed = .025;
    }
    if(global.currentSkin == s_frog_1){
        global.skin1.sprite_index = s_skin1_pressed;
        global.skin1.image_speed = .025;
    }
    if(global.currentSkin == s_frog_2){
        global.skin2.sprite_index = s_skin2_pressed;
        global.skin2.image_speed = .025;
    }
    if(global.currentSkin == s_frog_3){
        global.skin3.sprite_index = s_skin3_pressed;
        global.skin3.image_speed = .025;
    }
    if(global.currentSkin == s_frog_4){
        global.skin4.sprite_index = s_skin4_pressed;
        global.skin4.image_speed = .025;
    }
    if(global.currentSkin == s_frog_5){
        global.skin5.sprite_index = s_skin5_pressed;
        global.skin5.image_speed = .025;
    }
}
else{
    instance_create(1108.5, 323.5, o_back_btn);
    instance_create(867, 323.5, obj_purchase);
    
    if(global.currentSkin == s_frog_0){
        global.noskin.sprite_index = s_noskin_pressed;
        global.noskin.image_speed = .025;
    }
    
    global.skin1.sprite_index = s_skin1_locked;
    global.skin2.sprite_index = s_skin2_locked;
    global.skin3.sprite_index = s_skin3_locked;
    global.skin4.sprite_index = s_skin4_locked;
    global.skin5.sprite_index = s_skin5_locked;
}
