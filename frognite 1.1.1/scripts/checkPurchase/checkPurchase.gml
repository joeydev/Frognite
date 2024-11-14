// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkPurchase(){
	show_message_async(ds_list_size(global.tokenList));
	
	
	var _sz = ds_list_size(global.tokenList);
			//show_debug_message("UIAPS: acknowledge Current Products size: "+ string(_sz));
	        for (var i = 0; i < _sz; ++i;){
				show_message_async(string(ds_list_find_value(global.tokenList,i)));
				
			}
	
	
	
	/*
	for (var i = 0; i < ds_list_size(global.currentTokens); ++i;){
		show_message_async(string(ds_list_find_value(global.CurrentTokens,i)));
    }
	*/
	/*
	var _purchase_json = GPBilling_QueryPurchases(gpb_purchase_skutype_inapp);
	var _purchase_map = json_decode(_purchase_json);

	if (_purchase_map[? "success"] == true){
		var _list = _purchase_map[? "purchases"];
		var _sz = ds_list_size(_list);
		for (var i = 0; i < _sz; ++i;){
			var _map = _list[| i];
			show_debug_message(_map[? "purchaseState"]);
			if (_map[? "purchaseState"] == 1){
				show_message_async("1");
				buySkin();
				exit;
			}
			if (_map[? "purchaseState"] == 0){
				show_message_async("0");
				exit;
			}
			if (_map[? "purchaseState"] == 2){
				show_message_async("2");
				exit;
			}
		}
	} else {
		show_message_async("Play Store error: Could not retrieve purchase history. If you have already purchased this item, use the purchase button to unlock the item. You will not be charged a second time.");
	}
	*/
}