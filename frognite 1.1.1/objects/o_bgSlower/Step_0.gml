if(__background_get( e__BG.HSpeed, 1 ) <= 0){
    __background_set( e__BG.HSpeed, 1, __background_get( e__BG.HSpeed, 1 ) + ((midStartSpeed / 36) * -1) );
    __background_set( e__BG.HSpeed, 0, __background_get( e__BG.HSpeed, 0 ) + ((backStartSpeed / 36) * -1) );
}
else{
    __background_set( e__BG.HSpeed, 1, 0 );
    __background_set( e__BG.HSpeed, 0, 0 );
    instance_destroy(o_bgSlower);
}

