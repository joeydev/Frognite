/// @description purchase_product_iap(global.products[index],successful-action[alarm_index],canceled-action[alarm_index],consumable[boolean])
/// @param global.products[index]
/// @param successful-action[alarm_index]
/// @param canceled-action[alarm_index]
/// @param consumable[boolean]
function purchase_product_iap(argument0, argument1, argument2, argument3) {


	global.product_id = argument0;
	global.purchase_action_completed = argument1;
	global.purchase_action_canceled = argument2;
	global.product_consumable = argument3;


	if(iap_status() == iap_status_available){
	iap_acquire(global.product_id, ""); //request the purchase
	}else{
	show_message_async("Unable to contact Google Play. Please try again.");//error message
	}





}
