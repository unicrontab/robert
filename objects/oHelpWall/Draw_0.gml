draw_set_halign(fa_center);
draw_set_color($68F5FF);
draw_set_font(base);

var scale = global.textScale;
draw_text_transformed(x, y, "You cannot build \nor destroy these",scale,scale, image_angle);
