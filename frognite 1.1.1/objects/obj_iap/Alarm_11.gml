var GPBilling_Connection = GPBilling_ConnectToStore();
if (GPBilling_Connection == gpb_error_unknown){
	show_debug_message("ERROR: Billing API has not connected.");
	alarm[11] = room_speed * global.ConnectionTime;
}
