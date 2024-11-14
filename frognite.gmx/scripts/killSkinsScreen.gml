global.datafile = ds_map_secure_load("frognite_data.txt");
ds_map_replace(global.datafile, "currentSkin", global.currentSkin);
ds_map_secure_save(global.datafile, "frognite_data.txt");
ds_map_destroy(global.datafile);

if(instance_exists(obj_purchase)){ instance_destroy(obj_purchase);}
instance_destroy(o_skins_screen);
instance_destroy(o_skin1);
instance_destroy(o_skin2);
instance_destroy(o_skin3);
instance_destroy(o_skin4);
instance_destroy(o_skin5);
instance_destroy(o_back_btn);
instance_destroy(o_noskin);
