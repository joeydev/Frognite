/// @description async_product_iap();
function async_product_iap() {

	var _id = iap_data[? "type"];

	switch (_id)
	{
	  case iap_ev_storeload: // Check to see if the store has loaded or not
	    if (iap_data[? "status"] == iap_storeload_ok){
	        show_debug_message("The Store has been loaded");
	    }
	    else {
	show_debug_message("The Store falied!");
	}
	  break;

	  case iap_ev_product: // Get product details
	    var _product = iap_data[? "index"];
	    var _map = ds_map_create();
	    iap_product_details(_product, _map);
	    show_debug_message("Product activated - " + string(_product));
	    show_debug_message("ID - " + string(_map[? "id"]));
	    show_debug_message("Title - " + string(_map[? "title"]));
	    show_debug_message("Description - " + string(_map[? "description"]));
	    show_debug_message("Price - " + string(_map[? "price"]));
	    show_debug_message("Type - " + string(_map[? "type"]));
	    show_debug_message("Verified - " + string(_map[? "verified"]));
	/// getting the price for each product
	global.product_prices[int64(_product)] = string(_map[? "price"]);
	/// getting th etitle for each product
	global.product_titles[int64(_product)] = string(_map[? "title"]);
	    ds_map_destroy(_map);
	//room_goto(rm_shop);
	  break;
  
  
	}




}
