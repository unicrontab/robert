draw_set_halign(fa_center);
draw_set_color($9D98F6);
draw_set_font(base);

var scale = global.textScale;

draw_set_halign(fa_left);

draw_text_transformed(x, y, "High Scores",scale,scale, image_angle);

var levels = 6;
var currentLevel = 1;
repeat(levels) {
	draw_text_transformed(x, y + (currentLevel * 10), "LEVEL" + string(currentLevel),scale,scale, image_angle);
	currentLevel += 1;
}

draw_set_color($68F5FF);
currentLevel = 1;
repeat(levels) {
	draw_text_transformed(x + 50, y + (currentLevel * 10), string(global.scores[currentLevel] / room_speed),scale,scale, image_angle);
	currentLevel += 1;
}

