function endStartSeq() {
	global.nextBuildX = global.justBuilt.x + (global.halfBuildWidth * 2);
	instance_destroy(o_gameStartSequence);
	startGame();
}
