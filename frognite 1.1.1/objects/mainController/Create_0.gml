//-----------------------------Variables-------------------------------------------

//If save file doesn't exist, create it. If it does, load it
global.datafile = ds_map_secure_load("frognite_data.txt");
if(global.datafile == -1){
    global.datafile = ds_map_create();
    
    ds_map_add(global.datafile, "currentSkin", s_frog_0);
    global.currentSkin = ds_map_find_value(global.datafile, "currentSkin");
    
    ds_map_add(global.datafile, "highScore", 0);
    global.highScore = ds_map_find_value(global.datafile, "highScore");
    
    ds_map_add(global.datafile, "hasSkins", false);
    global.hasSkins = ds_map_find_value(global.datafile, "hasSkins");
	
	ds_map_add(global.datafile, "iapNotice", false);
    global.iapNotice = ds_map_find_value(global.datafile, "iapNotice");
    
    ds_map_secure_save(global.datafile, "frognite_data.txt");
}
else{
    global.currentSkin = ds_map_find_value(global.datafile, "currentSkin");
    global.highScore = ds_map_find_value(global.datafile, "highScore");
    global.hasSkins = ds_map_find_value(global.datafile, "hasSkins");
	global.iapNotice = ds_map_find_value(global.datafile, "iapNotice");
}

ds_map_destroy(global.datafile);


/*
//Purchased IAP DS Map---------------------------------------------------------
global.iapmap = ds_map_secure_load("iap_data.dat");
if(global.iapmap == -1){
    global.iapmap = ds_map_create();
    
    ds_map_add(global.iapmap, "skinPack", false);
    global.skinPack = ds_map_find_value(global.iapmap, "skinPack");
    
    //iap_restore_all();
    
    ds_map_secure_save(global.iapmap, "iap_data.dat");
}
else{
    global.skinPack = ds_map_find_value(global.iapmap, "skinPack");
}

//Activating IAP DS Map----------------------------------------------------------
if(global.skinPack == false){
    var iap_activate_map = ds_map_create();
    var productList = ds_list_create();
    //Create iap
    ds_map_add(iap_activate_map , "id", "skinPack"); //get this from gplay
    ds_list_add(productList, iap_activate_map);
    // Activate IAP
    iap_activate(productList);
    // Clean up
    ds_map_destroy(iap_activate_map);
    ds_list_destroy(productList);
}*/
//Automatic Google Play Login----------------------------------------------------

//instance_create(0,0,obj_iap);
//Ads
//adsInit();
//adsUseTest();

//ads
app_id = "ca-app-pub-1040526941455873~7174313057";
banner_id = "ca-app-pub-1040526941455873/2808580684";

GoogleMobileAds_Init("", app_id);
GoogleMobileAds_UseTestAds(true, "035F67A5EEBCA6D6B8FAA3995A5DB207");
GoogleMobileAds_AddBannerAt(banner_id, GoogleMobileAds_Banner);
GoogleMobileAds_MoveBanner((display_get_width() * .5) - (GoogleMobileAds_BannerGetWidth() * .5), display_get_height() - GoogleMobileAds_BannerGetHeight())
//GoogleMobileAds_HideBanner();

//GoogleMobileAds_ShowBanner();

global.levelTime = 0;
var gapTime = 0;
spawnTimeChange = 0;
global.recentTick = 0;
cTime = 0;
global.adPlaced = false;
global.emptyLane = 0;
global.vertNum = 1;
global.btnPressed = false;
global.currentTrasition = "none";
global.newHigh = false;
global.canShoot = true;
global.lastShot = 0;
global.alteredCanShoot = false;
global.jumping = false;
global.jumpJets = 0;
//Moves the frog forward to the correct location
global.frogYNext = 0;
global.frogAdjust = 0;
global.skinsAlreadyOwned = false; //only used when UIAP extension gets returned an error for already owned
global.tokenList = ds_list_create();

//Holds the ramp to be built next
global.currentRamp = "across";

global.ConnectionTime = 60;

//Whether or not the player is able to build
global.canBuild = true;

global.currentSpeed = 1.5;
global.speedCo = 0;
global.enemySpeed = global.currentSpeed * 1.1;
//global.buildSpeed = 1.5;

//Holds the image index of the current ghost ramp. 0-1 across, 2-3 up, 4-5 down
global.currentGhost = 0;

//Hold the X and Y of the next ramp to be built
global.nextBuildX = 0;
global.nextBuildY = 0;

//Half the width and height of the ramps. For placement purposes
global.halfBuildWidth = 32;
global.halfBuildHeight = 32;

//Adjusts the Y of the current ghost ramp (result of only using one ghost object)
global.ghostYNumber = 0;

//The current "lane" the player is in. 1, 2, 3
global.currentHeight = 1;

//Holds the id of the ghost object to be referenced by the ghost script
global.theGhost = 0;

//Ghost is limited by maximum or minimum height
global.heightRestricted = false;

//Checks if the player has been killed
global.gameOn = false;

global.currentMusic = game_music_1;
global.musicNumber = 1;

global.frogPlaying = false;

jumpNum = -1;
chooseEnemy = true;
spawnedOne = false;

draw_set_font(LuckiestGuy);
draw_set_colour(c_black);
draw_set_halign(fa_right);

//-------------------------------------Setup-------------------------------------

//Place the backgrounds
setupBackgrounds();
//Go to the menu
goToMenu("null");

/* */
/*  */
