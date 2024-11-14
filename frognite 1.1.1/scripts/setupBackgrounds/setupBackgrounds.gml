function setupBackgrounds() {
	//Place distant background
	__background_set( e__BG.Index, 0, bg_top );
	__background_set( e__BG.XScale, 0, .5 );
	__background_set( e__BG.YScale, 0, .5 );
	__background_set( e__BG.Visible, 0, true );
	__background_set( e__BG.HSpeed, 0, -global.currentSpeed * .008 );
	__background_set( e__BG.VTiled, 0, false );

	//Place middle background
	__background_set( e__BG.Index, 1, bg_middle );
	__background_set( e__BG.XScale, 1, .5 );
	__background_set( e__BG.YScale, 1, .5 );
	__background_set( e__BG.Visible, 1, true );
	__background_set( e__BG.HSpeed, 1, -global.currentSpeed );
	__background_set( e__BG.VTiled, 1, false );
	__background_set( e__BG.Y, 1, 246 );

	//Place closest background
	//background_index[2] = bg_bottom;
	//background_visible[2] = true;
	//background_hspeed[2] = -1;
	//background_vtiled[2] = false;
	//background_y[2] = 330;



}
