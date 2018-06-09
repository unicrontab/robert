x += (xTo - x)/25;
y += (yTo - y)/25;
/*
var mouseDir = point_direction(x, y, mouse_x, mouse_y);
var mouseDistance = point_distance(x, y, mouse_x, mouse_y);
var lookahead = 0.2;

var mouseAheadX = lengthdir_x(mouseDistance * lookahead, mouseDir);
var mouseAheadY = lengthdir_y(mouseDistance * lookahead, mouseDir);
*/
if (follow != noone) {
	xTo = follow.x;// + mouseAheadX;
	yTo = follow.y;// + mouseAheadY;
}
/*
show_debug_message("mouseAheadX");
show_debug_message(string(mouseAheadX));
*/


var viewMatrix = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, viewMatrix);