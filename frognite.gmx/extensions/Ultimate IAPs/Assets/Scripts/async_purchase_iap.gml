///async_purchase_iap();


var _id = iap_data[? "type"];
switch(_id){
	
case iap_ev_purchase:
        var _product = iap_data[? "index"];
        var _map = ds_map_create();
        iap_purchase_details(_product, _map);
        show_debug_message("PRODCT PURCHASED - " + string(_product));
        show_debug_message("Product - " + string(_map[? "product"]));
        show_debug_message("Order - " + string(_map[? "order"]));
        show_debug_message("Token - " + string(_map[? "token"]));
        show_debug_message("Payload - " + string(_map[? "payload"]));
        show_debug_message("Receipt - " + string(_map[? "receipt"]));
        show_debug_message("Response - " + string(_map[? "response"]));
	
		switch (_map[? "status"])
        {
            case iap_available:
                show_debug_message("Purchase available");
            break;
            
			case iap_failed:
                show_debug_message("Purchase failed");
				///action
				alarm[global.purchase_action_canceled] = 1;
            break;
            
			case iap_purchased:
                show_debug_message("Purchase completed");
				
				//if consumable
				if(global.product_consumable){
					iap_consume(global.product_id);
				}
				///action
				alarm[global.purchase_action_completed] = 1;
				
            break;
            
			case iap_canceled:
                show_debug_message("Purchase cancelled");
				show_message_async("Purchase cancelled");
            break;
            
			case iap_refunded:
                show_debug_message("Purchase refunded");
            break;
        }
        ds_map_destroy(_map);
	break;
}
