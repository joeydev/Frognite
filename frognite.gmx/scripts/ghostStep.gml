//across
if(global.currentGhost == 0){
    global.theGhost.image_index = 0;
    global.ghostYNumber = 4;
}
//up
else{
    if(global.currentGhost == 1){
        if(global.currentHeight != 2){
            global.theGhost.image_index = 1;
        }
        else{
            global.theGhost.image_index = 2;
        }
    }
    //down
    else{
        if(global.currentGhost == 3){
            if(global.currentHeight != 0){
                global.theGhost.image_index = 3;
            }
            else{
                global.theGhost.image_index = 4;
            }
        }
    }
}
