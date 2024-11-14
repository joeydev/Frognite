///activate_iaps();

/*  Ultimate Iaps by DroidGames Studio 2019
Licence: use it on whatever game you want to monetize with iaps :v
*/

//momentary vars
//you can delete this :D
show_debug_message("-Ultimate Iaps by DroidGames Studio-");

//actions
global.purchase_action_completed = noone;
global.purchase_action_canceled = noone;
global.product_consumable = false;
global.product_id = noone; 

//purchase or products ids.
global.products[0] = "android.test.purchased";
global.products[1] = "frognite_skins_pack";
//global.products[1] = "purchase_id";
//global.products[2] = "XXXXX";
//global.products[X] = "XXXXX";


global.product_prices = array_create(array_length_1d(global.products)); //to get the price with the respective currency
global.product_titles = array_create(array_length_1d(global.products));
product_map = array_create(array_length_1d(global.products));
productList = ds_list_create();

for(i=0;i<array_length_1d(global.products);i++){
// Create the map with each purchase id
product_map[i] = ds_map_create();

ds_map_add(product_map[i], "id", global.products[i]);
ds_map_add(product_map[i], "title", "Title");

ds_list_add(productList, product_map[i]);
}

// Activate IAPs
iap_activate(productList);

//clean up all the stuff
for(i=0;i<array_length_1d(product_map);i++){
ds_map_destroy(product_map[i]);
}

ds_list_destroy(productList);
