draw_set_halign(fa_center);
draw_set_color($68F5FF);
draw_set_font(base);

var scale = 0.4;
var imageScale = 2.0;


draw_sprite_ext(sD, image_index, x, y, imageScale, imageScale, image_angle, image_blend, image_alpha);
draw_text_transformed(x, y - 30, "right",scale,scale, image_angle);
