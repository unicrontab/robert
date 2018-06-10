repeat(3) {
	with(instance_create_layer(x, y, "Particles", oWallParticle)){
		speed = 2;
		direction = random_range(0, 360);
	}
}
screenShake(4,4);
instance_destroy();
