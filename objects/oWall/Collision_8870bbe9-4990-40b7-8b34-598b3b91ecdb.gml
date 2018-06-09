var gridSize = 12;
var boundry = 5;

var dirToBullet = point_direction(other.x, other.y, x, y);
	
var newX = other.x - lengthdir_x(10, other.direction);
var newY = other.y - lengthdir_y(10, other.direction);


show_debug_message(dirToBullet)		
	
// Left side hit
if (dirToBullet > 315 || dirToBullet <= 45) {
	show_debug_message("left side")	
	if (!place_meeting(x - gridSize, y, oPlayer)) instance_create_layer(x - gridSize, y, "Instances", oWall);
// Bottom side hit
} else if (dirToBullet > 45 && dirToBullet <= 135) {
	show_debug_message("bottom side")	
	if (!place_meeting(x, y + gridSize, oPlayer)) instance_create_layer(x, y + gridSize, "Instances", oWall);
// Right side hit
} else if (dirToBullet > 135 && dirToBullet <= 225) {
	show_debug_message("right side")	
	if (!place_meeting(x + gridSize, y, oPlayer)) instance_create_layer(x + gridSize, y, "Instances", oWall);
// Top side hit
} else if (dirToBullet > 225 && dirToBullet <= 315) {
	show_debug_message("top side")	
	if (!place_meeting(x, y - gridSize, oPlayer)) instance_create_layer(x, y - gridSize, "Instances", oWall);
}

	


