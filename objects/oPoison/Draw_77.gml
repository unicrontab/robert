if (place_meeting(x, y, oWall)) {
	with (other) {
		instance_destroy();
	}
	instance_destroy();	
}