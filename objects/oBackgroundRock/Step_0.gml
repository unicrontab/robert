/// @description Insert description here
// You can write your code in this editor
image_alpha = opacity;
if (timeout <= 0 || opacity <= 0) {
	image_alpha = 0;
	instance_destroy();
}
vspeed += grav;
y += vspeed;