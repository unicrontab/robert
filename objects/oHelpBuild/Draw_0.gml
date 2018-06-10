draw_set_halign(fa_center);
draw_set_color($68F5FF);
draw_set_font(base);

var scale = global.textScale;
draw_text_transformed(x, y, "fire to build \nalt-fire to destroy",scale,scale, image_angle);
