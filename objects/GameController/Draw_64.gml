/// @description Insert description here
// You can write your code in this editor
var pointDelta = global.totalPoints - oPlayer.points;
var currentIndex = 0;

repeat(oPlayer.points) {
	//draw_sprite(oTokenDisplay, -1, camera_get_view_x(view_camera[view_current]) + 20 + (currentIndex * 24), camera_get_view_y(view_camera[view_current]));
	draw_sprite_ext(sToken, image_index, 40 + (currentIndex * 30), 40, 2, 2, image_angle, image_blend, image_alpha);
	currentIndex += 1;
}

repeat(pointDelta) {
	draw_sprite_ext(sTokenBlank, image_index, 40 + (currentIndex * 30), 40, 2, 2, image_angle, image_blend, image_alpha);
	currentIndex += 1;
}
lastPoints = oPlayer.points;