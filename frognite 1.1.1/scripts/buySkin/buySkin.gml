// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function buySkin(){
	global.hasSkins = true;
	global.datafile = ds_map_secure_load("frognite_data.txt");
	ds_map_replace(global.datafile, "hasSkins", global.hasSkins);
	ds_map_secure_save(global.datafile, "frognite_data.txt");
	ds_map_destroy(global.datafile);

	global.skin1.sprite_index = s_skin1_btn;
	global.skin2.sprite_index = s_skin2_btn;
	global.skin3.sprite_index = s_skin3_btn;
	global.skin4.sprite_index = s_skin4_btn;
	global.skin5.sprite_index = s_skin5_btn;

	instance_destroy(obj_purchase);
	o_back_btn.x = 320;


	global.btnPressed = false; 
}