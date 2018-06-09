/// @description Insert description here
// You can write your code in this editor
points += 1;

with (other) {
	repeat(200) {
		random_range(0,10)
		instance_create_layer(x + random_range(-10,10), y + random_range(-10,10), "Particles", oBling);
	}
	instance_create_layer(x + 10, y - 5, "Particles", oPointParticle);
	instance_destroy();	
}