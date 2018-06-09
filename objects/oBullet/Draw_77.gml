if (place_meeting(x, y, oWall)) {
	repeat(10) {
		instance_create_layer(x, y, "Particles", oWhiteParticle);
	}
	with (other) {
		instance_destroy();
	}
	instance_destroy();	
}