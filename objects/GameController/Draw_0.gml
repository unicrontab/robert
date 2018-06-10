/// @description Insert description here
// You can write your code in this editor
draw_self();

if (complete) {
	with (oPlayer) {
		draw_set_halign(fa_center);
		draw_text_transformed(x, y - 40, string(global.time/room_speed), 1, 1, image_angle);	
	}
}