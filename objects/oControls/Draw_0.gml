draw_set_halign(fa_center);
draw_set_color($68F5FF);
draw_set_font(base);

var scale = 0.4;
var imageScale = 2.0;

draw_sprite_ext(sEsc, image_index, x - 90, y, imageScale, imageScale, image_angle, image_blend, image_alpha);
draw_set_halign(fa_center);
draw_text_transformed(x - 90, y - 30, "Go to Menu",scale,scale, image_angle);

draw_sprite_ext(sA, image_index, x - 24, y, imageScale, imageScale, image_angle, image_blend, image_alpha);
draw_set_halign(fa_right);
draw_text_transformed(x - 24, y + 20, "left",scale,scale, image_angle);

draw_sprite_ext(sD, image_index, x + 24, y, imageScale, imageScale, image_angle, image_blend, image_alpha);
draw_set_halign(fa_left);
draw_text_transformed(x + 24, y + 20, "right",scale,scale, image_angle);


draw_sprite_ext(sW, image_index, x, y - 24, imageScale, imageScale, image_angle, image_blend, image_alpha);
draw_set_halign(fa_center);
draw_text_transformed(x, y - 55, "jump",scale,scale, image_angle);


draw_sprite_ext(sLeftClick, image_index, x + 100, y, imageScale, imageScale, image_angle, image_blend, image_alpha);
draw_set_halign(fa_center);
draw_text_transformed(x + 100, y - 30, "fire",scale,scale, image_angle);

draw_sprite_ext(sRightClick, image_index, x + 160, y, imageScale, imageScale,  image_angle, image_blend, image_alpha);
draw_set_halign(fa_center);
draw_text_transformed(x + 160, y - 30, "alt-fire",scale,scale, image_angle);
