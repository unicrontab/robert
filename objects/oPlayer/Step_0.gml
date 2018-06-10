keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("E")) + keyboard_check(ord("D"));
keyUp = keyboard_check(188) + keyboard_check(ord("W"));

var move = keyRight - keyLeft;

xspeed = move * movespeed;
yspeed += grav;
if (yspeed > maxYSpeed) yspeed = maxYSpeed;


if ((place_meeting(x, y + 4, oWall)) || (place_meeting(x, y + 4, oWallSolid))) && keyUp {
	yspeed += -4;
}

if (place_meeting(x + xspeed, y, oWall) || (place_meeting(x + xspeed, y, oWallSolid))) {
	while (!place_meeting(x + sign(xspeed), y, oWall) && (!place_meeting(x + sign(xspeed), y, oWallSolid))) {
		x += sign(xspeed);	
	}
	xspeed = 0;
}
x += xspeed;

if (place_meeting(x, y + yspeed, oWall) || place_meeting(x, y + yspeed, oWallSolid)) {
	screenShake(yspeed / 4, yspeed / 4);
	while (!place_meeting(x, y + sign(yspeed), oWall) && !place_meeting(x, y + sign(yspeed), oWallSolid)) {
		y += sign(yspeed);	
	}
	if (yspeed > grav) {
		repeat(10) {
			with (instance_create_layer(x, y + 13, "Particles", oSmoke)){
				var to = random_range(0,180);
				direction = to;
			}
		}
	}
	yspeed = 0;
}
y += yspeed;



if (sign(yspeed) < 0) {
	sprite_index = sPlayerJumpFall;
	image_speed = 0;
	image_index = 0;
} else if (sign(yspeed) > 0) {
	sprite_index = sPlayerJumpFall
	image_speed = 0;
	image_index = 1;
} else if (sign(xspeed) != 0) {
	sprite_index = sPlayerWalk;
	image_speed = 1;
	image_xscale = sign(xspeed);
	repeat(2) {
		with (instance_create_layer(x + random_range(-2,2), y + 13, "Particles", oSmoke)){
			image_alpha	= 0.4;
			speed = random_range(1, 2);
			if (sign(xspeed) > 0) {
				direction = 45;
			} else {
				direction = 135;
			}
		}
	}
} else {
	sprite_index = sPlayer;
	image_speed = 1;
}

if (y > room_height) y = 0;
if (x > room_width) x = 0;
if (x < 0) x = room_width;


