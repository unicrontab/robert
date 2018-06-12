/// @description Insert description here
// You can write your code in this editor
var pointDelta = global.totalPoints - oPlayer.points;
var currentIndex = 0;

repeat(oPlayer.points) {
	//draw_sprite(oTokenDisplay, -1, camera_get_view_x(view_camera[view_current]) + 20 + (currentIndex * 24), camera_get_view_y(view_camera[view_current]));
	draw_sprite_ext(sToken, -1, 40 + (currentIndex * 30), 40, 2, 2, image_angle, image_blend, image_alpha);
	currentIndex += 1;
}

repeat(pointDelta) {
	draw_sprite_ext(sTokenBlank, -1, 40 + (currentIndex * 30), 40, 2, 2, image_angle, image_blend, image_alpha);
	currentIndex += 1;
}

draw_set_halign(fa_right);
draw_text_transformed(camera_get_view_width(view_current) - 30, 40, string(global.time/room_speed), 1, 1, image_angle);

var levelName = room_get_name(room);
draw_set_halign(fa_left);
draw_text_transformed(40, 75, levelName, 1, 1, image_angle);

lastPoints = oPlayer.points;