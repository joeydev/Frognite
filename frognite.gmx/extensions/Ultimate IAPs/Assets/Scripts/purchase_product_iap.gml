///purchase_product_iap(global.products[index],successful-action[alarm_index],canceled-action[alarm_index],consumable[boolean])


global.product_id = argument0;
global.purchase_action_completed = argument1;
global.purchase_action_canceled = argument2;
global.product_consumable = argument3;


if(iap_status() == iap_status_available){
	iap_acquire(global.product_id, ""); //request the purchase
}else{
	show_message_async("The shop is not available");//error message
}


