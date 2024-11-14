#define UIaps_Init
/// @description UIaps_Init();
/// @param connection-time
/*  Ultimate Iaps by DroidGames Studio 2020
Licence: use it on whatever game you want to monetize with iaps :v
*/

//you can delete this :D
show_debug_message("-Ultimate Iaps by DroidGames Studio-\n Runtime v2.2.4 updated");

//this not D:
global.IAP_Enabled = false;
global.SUBSCRIPTION_Enabled = false;
global.ConnectionTime = argument0;
global.CurrentTokens = ds_list_create();
global.CurrentProducts = ds_list_create();
global.CurrentTokenSubscription = "";

// Activate IAPs
var GPBilling_Connection = GPBilling_ConnectToStore();
if (GPBilling_Connection == gpb_error_unknown){
	show_message_async("ERROR - Billing API Has Not Connected!");
	ds_list_destroy(global.CurrentTokens);
	ds_list_destroy(global.CurrentProducts);
	alarm[11] = room_speed * global.ConnectionTime;
}

#define UIaps_Add_Url_Subscriptions_Validation
///@description UIaps_Add_Url_Subscriptions_Validation()
///@param url_validation_server

global.ServerSideUrl_SubsVal = argument0;

#define UIaps_LoadResources
//@description UIaps_LoadResources_T();

global.GPBillingProducts = array_create(0);
global.GPBillingProductsConfig = array_create(0);
global.GPBillingProductsAction = array_create(0);
global.GPBillingCurrentPurchase = 0;
global.GPBBillingPurchasedCallback = noone;

//suscriptions
global.GPBillingSubscriptions = array_create(0);
global.GPBillingSubscriptionsAction = array_create(0);
global.GPBillingIAPType = array_create(0);
global.GPBillingServerSubscriptionValidation = noone;
global.SubscriptionValidating = false;
global.ServerSideUrl_SubsVal = "";

#define UIaps_AddProduct
///@description UIaps_AddProduct()
///@param idProduct
///@param purchased-script
///@param consumable

var index = array_length_1d(global.GPBillingProducts);
global.GPBillingProducts[index] = argument0;
global.GPBillingProductsConfig[index] = argument1;
global.GPBillingProductsAction[index] = argument2;

#define UIaps_AddSubscription
///@description UIaps_AddSubscription()
///@param idSuscription
///@param purchased-script

var index = array_length_1d(global.GPBillingSubscriptions);
global.GPBillingSubscriptions[index] = argument0;
global.GPBillingSubscriptionsAction[index] = argument1;

#define UIaps_PurchaseProduct
/// @description UIaps_PurchaseProduct()
///@param product

if (GPBilling_IsStoreConnected() && global.IAP_Enabled){
	var purchase = GPBilling_PurchaseProduct(argument0);
	global.GPBillingCurrentPurchase = argument0

	if (purchase != gpb_no_error) {
	    show_message_async("UIaps - There is a problem to purchase this product");
	}
}

#define UIaps_PurchaseSubscription
/// @description UIaps_PurchaseSubscription()
///@param product

if (GPBilling_IsStoreConnected() && global.IAP_Enabled){
	var purchase = GPBilling_PurchaseSubscription(argument0);
	global.GPBillingCurrentPurchase = argument0
	if (purchase != gpb_no_error) {
	    show_message_async("UIAPs: There is a problem to purchase this subscription");
	}
}

#define UIaps_DrawProductAttribute
///@description UIaps_DrawProductAttribute_T
///@param x
///@param y
///@param product-index
///@param attribute

xx = argument0
yy = argument1
pidx = argument2
attribute = argument3

idx = 0;
switch(attribute){
	case PRODUCTID:
		idx = 0;
		break;

	case PRODUCTPRICE:
		idx = 1;
		break;

	case PRODUCTTITLE:
		idx = 2;
		break;

	case PRODUCTDESCRIPTION:
		idx = 3;
		break;

}


if(global.IAP_Enabled && os_is_network_connected()){
	draw_text(xx,yy,string(global.GPBillingProductData[pidx,idx]));
}else{
	draw_text(xx,yy,"No product found");
}

#define UIaps_DrawSubscriptionAttribute
///@description UIaps_DrawSubscriptionAttribute
///@param x
///@param y
///@param product-index
///@param attribute

xx = argument0
yy = argument1
pidx = argument2
attribute = argument3

idx = 0;
switch(attribute){
	case PRODUCTID:
		idx = 0;
		break;

	case PRODUCTPRICE:
		idx = 1;
		break;

	case PRODUCTTITLE:
		idx = 2;
		break;

	case PRODUCTDESCRIPTION:
		idx = 3;
		break;

}


if(global.SUBSCRIPTION_Enabled && os_is_network_connected()){
		draw_text(xx,yy,string(global.GPBillingSubscriptionData[pidx,idx]));
}else{
	draw_text(xx,yy,"No subscription found");
}

#define UIaps_SubscriptionValidation_Async
///@description UIaps_SubscriptionValidation_Async
var subscription_validation_result = "";

if (ds_map_find_value(async_load, "id") == global.GPBillingServerSubscriptionValidation){
	if (ds_map_find_value(async_load, "status") == 0){
			subscription_validation_result = ds_map_find_value(async_load, "result");
			var purchase_json = json_decode(subscription_validation_result);

			if(purchase_json[? "orderId"] != undefined){
				show_debug_message("UIAPs: Server Validation Result: Purchase Valid! Purchase ID:"+string(purchase_json[? "orderId"]));

				GPBilling_AcknowledgePurchase(global.CurrentTokenSubscription);

	            ds_list_add(global.CurrentTokens, global.CurrentTokenSubscription);
	            ds_list_add(global.CurrentProducts, global.GPBillingCurrentPurchase);

	        }else{
				if(purchase_json[? "code"] != undefined){
					show_message_async(string(purchase_json[? "mgs"]));
				}
			}
	}

}

#define UIaps_Purchases_Async
/// @description UIaps_Purchases_Async
var GPBilling_Event = async_load[? "id"];
switch (GPBilling_Event){

	case gpb_store_connect:
		//querying products
	    for(i=0;i<array_length_1d(global.GPBillingProducts);i++){
			GPBilling_AddProduct(global.GPBillingProducts[i]);
		}
		
		//querying suscriptions
		for(i=0;i<array_length_1d(global.GPBillingSubscriptions);i++){
			GPBilling_AddSubscription(global.GPBillingSubscriptions[i]);
		}
		
	    GPBilling_QueryProducts();
	
	    break;

	case gpb_store_connect_failed:
	    alarm[0] = room_speed * global.ConnectionTime;
	    break;

	case gpb_product_data_response:
		show_debug_message("UIAPS: QUERYING PRODUCTS");
	    var JsonResult = async_load[? "response_json"];
	    var GPBillingMap = json_decode(JsonResult);

	    if (GPBillingMap[? "success"] == true){
	        var GPBillingProductList = GPBillingMap[? "skuDetails"];


	        for (var i = 0; i < ds_list_size(GPBillingProductList); ++i;){

		        var CurrentProduct = GPBillingProductList[| i];
		        var index = 0;
	            while(CurrentProduct[? "productId"] != global.GPBillingProducts[index]){
	                ++index;
	            }

	            global.GPBillingProductData[index, 0] = CurrentProduct[? "productId"];
	            global.GPBillingProductData[index, 1] = CurrentProduct[? "price"];
	            global.GPBillingProductData[index, 2] = CurrentProduct[? "title"];
	            global.GPBillingProductData[index, 3] = CurrentProduct[? "decription"];

			}
			
			if(ds_list_size(GPBillingProductList)>0){
				global.IAP_Enabled = true;
			}
			
			if!(global.ServerSideUrl_SubsVal = noone || global.ServerSideUrl_SubsVal = ""){
				GPBilling_QuerySubscriptions();
			}else{
				show_debug_message("UIAPs: WARNING: No Validation Server set for Subscriptions, Subscriptions will be unable");
			}
			
		    var _purchase_json = GPBilling_QueryPurchases(gpb_purchase_skutype_inapp);
		    var _purchase_map = json_decode(_purchase_json);

		    if (_purchase_map[? "success"] == true){

		        var _list = _purchase_map[? "purchases"];
			
		        var _sz = ds_list_size(_list);

		        for (var i = 0; i < _sz; ++i;){
		            var _map = _list[| i];


		            if (_map[? "purchaseState"] == 0){
		                    
						var _pid = _map[? "productId"];
		                var _token = _map[? "purchaseToken"];
		                var AddToken = false;
							
						for(var z=0;z<array_length_1d(global.GPBillingProducts);z++){
							var _lpid = global.GPBillingProducts[z];
								
							if (_pid == _lpid){
								
								if(global.GPBillingProductsConfig[z]){
									global.GPBillingCurrentPurchase = _lpid;
									GPBilling_ConsumeProduct(_token);
									AddToken = true;
								}else{
									if (_map[? "acknowledged"] == 0){
										global.GPBillingCurrentPurchase = _lpid;
				                        GPBilling_AcknowledgePurchase(_token);
				                        AddToken = true;
			                        }
								}

			                    if (AddToken){
				                    ds_list_add(global.CurrentTokens, _token);
							ds_list_add(global.tokenList, _token);
				                    ds_list_add(global.CurrentProducts, _pid);
								}
							}
						}
					  }
					  ds_map_destroy(_map);
		            }
		        }
				ds_map_destroy(_purchase_map);
				
		    }
			
		ds_map_destroy(GPBillingMap);
		
	    break;

	case gpb_subscription_data_response:
		show_debug_message("UIAPS: SUSBCRIPTIONS QUERYING-");
		var JsonResult = async_load[? "response_json"];
		
		show_debug_message(string(JsonResult));
		
	    var GPBillingMap = json_decode(JsonResult);
		
		if (GPBillingMap[? "success"] == true){
	        var GPBillingSubscriptionList = GPBillingMap[? "skuDetails"];
			
	        for (var i = 0; i < ds_list_size(GPBillingSubscriptionList); ++i;){

		        var CurrentSubscription = GPBillingSubscriptionList[| i];
		        var index = 0;
	            while(CurrentSubscription[? "productId"] != global.GPBillingSubscriptions[index]){
	                ++index;
	            }

	            global.GPBillingSubscriptionData[index, 0] = CurrentSubscription[? "productId"];
	            global.GPBillingSubscriptionData[index, 1] = CurrentSubscription[? "price"];
	            global.GPBillingSubscriptionData[index, 2] = CurrentSubscription[? "title"];
	            global.GPBillingSubscriptionData[index, 3] = CurrentSubscription[? "decription"];

		    }
			
			if(ds_list_size(GPBillingSubscriptionList)>0){
				global.SUBSCRIPTION_Enabled = true;
			}
			
			var _purchase_json = GPBilling_QueryPurchases(gpb_purchase_skutype_subs);
			show_debug_message(string(_purchase_json));
			var _purchase_map = json_decode(_purchase_json);
			
			if (_purchase_map[? "success"] == true){

		        var _list = _purchase_map[? "purchases"];
		        var _sz = ds_list_size(_list);

		        for (var i = 0; i < _sz; ++i;){
		            var _map = _list[| i];
		            if (_map[? "purchaseState"] == 0){
		                    
						var _pid = _map[? "productId"];
		                var _token = _map[? "purchaseToken"];
		                var AddToken = false;
							
						for(var z=0;z<array_length_1d(global.GPBillingSubscriptions);z++){
							var _lpid = global.GPBillingSubscriptions[z];
								
							if (_pid == _lpid){
								
								if (_map[? "acknowledged"] == 0){
									global.GPBillingCurrentPurchase = _lpid;
				                    GPBilling_AcknowledgePurchase(_token);
				                    AddToken = true;
			                    }
								
			                    if (AddToken){
				                    ds_list_add(global.CurrentTokens, _token);
				                    ds_list_add(global.CurrentProducts, _pid);
								}
							}
						}
					  }
					  ds_map_destroy(_map);
		            }
		        }
				ds_map_destroy(_purchase_map);
		     }
		ds_map_destroy(GPBillingMap);
		break;

	case gpb_iap_receipt:
		show_debug_message("UIAPS: Receipt Recieved");
	    var JsonResult = async_load[? "response_json"];
		show_debug_message("UIAPS: Receipt: "+string(JsonResult));
	    var GPBillingMap = json_decode(JsonResult);

	    if (GPBillingMap[? "success"] == true){
	        if (ds_map_exists(GPBillingMap, "purchases")){
	            
				var _plist = ds_map_find_value(GPBillingMap, "purchases");
	            var _type_product = UIAPs_PRODUCT_CONSUMABLE;
				for (var i = 0; i < ds_list_size(_plist);  ++i;){
	            
				var _pmap = _plist[| i];
					var _ptype = UIAPs_TYPE_PRODUCT;
	                var _ptoken = _pmap[? "purchaseToken"];
	                var _sig = GPBilling_Purchase_GetSignature(_ptoken);
	                var _pjson = GPBilling_Purchase_GetOriginalJson(_ptoken);
					var _pid = _pmap[? "productId"];
	               
				   //check is the current purchase is a product
				   for(i = 0; i < array_length_1d(global.GPBillingProducts); i++){
						if(_pid == global.GPBillingProducts[i]){
							_ptype = UIAPs_TYPE_PRODUCT;
						}
				   }
				   
				   //check is the current purchase is a subscription
				   for(i = 0; i < array_length_1d(global.GPBillingSubscriptions); i++){
						if(_pid == global.GPBillingSubscriptions[i]){
							_ptype = UIAPs_TYPE_SUBSCRIPTION;
						}
				   }
				   
				   switch(_ptype){
						case UIAPs_TYPE_PRODUCT:
							if (GPBilling_Purchase_VerifySignature(_pjson, _sig)){
								show_debug_message("UIAPS: Product Receipt Verified");
						
								for(z = 0; z<array_length_1d(global.GPBillingProducts);z++){
									if(_pid == global.GPBillingProducts[z]){
										 _type_product = global.GPBillingProductsConfig[z];
									}
								}
				
								switch(_type_product){
									case UIAPs_PRODUCT_CONSUMABLE:
										GPBilling_ConsumeProduct(_ptoken);
										break;
										
									case UIAPs_PRODUCT_NON_CONSUMABLE:
										GPBilling_AcknowledgePurchase(_ptoken);
										break;
								}
							
			                    ds_list_add(global.CurrentTokens, _ptoken);
			                    ds_list_add(global.CurrentProducts, _pmap[? "productId"]);
							}
							break;
							
						case UIAPs_TYPE_SUBSCRIPTION:
								//Server Validation Subscriptions
							   show_debug_message("UIAPs: Server Validation initiated packageName:"+_pmap[? "packageName"]);
							   global.GPBillingServerSubscriptionValidation = http_post_string(global.ServerSideUrl_SubsVal+"?packageName="+_pmap[? "packageName"]+"&productId="+_pmap[? "productId"]+"&token="+_ptoken,"");
							   global.CurrentTokenSubscription = _ptoken;
							break;
				   }
				   
				   
				   
	             }
	          }
	        }
			
			if (GPBillingMap[? "failure"] == UIAPs_USER_CANCELLED){
				alarm[10] = 1;
			}
			
	    ds_map_destroy(GPBillingMap);
	    break;

	case gpb_acknowledge_purchase_response:
		show_debug_message("UIAPS: acknowledge the products");
	    var _map = json_decode(async_load[? "response_json"]);
		show_debug_message("UIAPS: Product acknowledged: "+string(_map));
	    var _num = -1;
	    if (_map[? "responseCode"] == 0){
			show_debug_message("UIAPS: Product acknowledge Response: 0");
			
	        var _sz = ds_list_size(global.CurrentProducts);
			
			show_debug_message("UIAPS: Checking the current product: "+global.GPBillingCurrentPurchase);
	        for (var i = 0; i < _sz; ++i;){
	            if (global.CurrentProducts[| i] == global.GPBillingCurrentPurchase){
	                for(z = 0; z < array_length_1d(global.GPBillingProducts); z++){
						if(global.GPBillingCurrentPurchase == global.GPBillingProducts[z]){
							script_execute(global.GPBillingProductsAction[z]);
							_num = i;
						}
					}
	                break;
	            }
	        }
			
			show_debug_message("UIAPS: Checking the current subscription: "+global.GPBillingCurrentPurchase);
			
			var _sz = ds_list_size(global.CurrentTokens);
			show_debug_message("UIAPS: acknowledge Current Products size: "+ string(_sz));
	        for (var i = 0; i < _sz; ++i;){
				show_debug_message(string(ds_list_find_value(global.CurrentTokens,i)));
	            if (global.CurrentProducts[| i] == global.GPBillingCurrentPurchase){
	                for(z = 0; z < array_length_1d(global.GPBillingSubscriptions); z++){
						if(global.GPBillingCurrentPurchase == global.GPBillingSubscriptions[z]){
							script_execute(global.GPBillingSubscriptionsAction[z]);
							_num = i;
						}
					}
	                break;
	            }
	        }

	        if (_num > -1){
	            ds_list_delete(global.CurrentProducts, _num);
	            ds_list_delete(global.CurrentTokens, _num);
	        }
	     }
		 
	    ds_map_destroy(_map);
	    break;

	case gpb_product_consume_response:
		show_debug_message("UIAPS: Consuming the products");
	    var _json = async_load[? "response_json"];
		show_debug_message("UIAPS: Product to consume: "+string(_json));
	    var _map = json_decode(_json);
	    var _num = -1;
		if (ds_map_exists(_map, "purchaseToken")) {
			
		//checking products
		for (var i = 0; i < ds_list_size(global.CurrentTokens); ++i;){
		    if (_map[? "purchaseToken"] == global.CurrentTokens[| i]){
		        if (global.CurrentProducts[| i] == global.GPBillingCurrentPurchase){
		            for(z = 0; z<array_length_1d(global.GPBillingProducts);z++){
						if(global.GPBillingCurrentPurchase == global.GPBillingProducts[z]){
							script_execute(global.GPBillingProductsAction[z]);
							show_debug_message("UIAPS: PRODUCT: Action executed");
							_num = i;
						}
					}

		            break;
		        }
		     }
		  }
		
			if (_num > -1){
				ds_list_delete(global.CurrentProducts, _num);
				ds_list_delete(global.CurrentTokens, _num);
			}
		}else{
			switch(_map[? "responseCode"]){
				case ITEMALREADYOWNED:
					global.GPBBillingPurchasedCallback = ITEMALREADYOWNED;
					//global.skinsAlreadyOwned = true;
					//show_debug_message("UIap - THIS ITEM WAS ALREADY PURCHASED");
					break;
			}
			// Parse the error response codes here
			// and react appropriately
		}


	    ds_map_destroy(_map);
	    break;

}
