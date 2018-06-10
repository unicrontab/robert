/// @description Insert description here
// You can write your code in this editor
timeout -= 0.05;
opacity -= 0.05;
image_alpha = opacity;
if (timeout <= 0 || opacity <= 0) {
	image_alpha = 0;
	instance_destroy();
}
vspeed += grav;
y += vspeed;