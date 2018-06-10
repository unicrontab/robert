
if (oPlayer.points == global.totalPoints && complete != true) {
	complete = true;
	alarm[0] = 50;
	if (global.scores[room] == 0 || global.time < global.scores[room]) global.scores[room] = global.time;
}

if (!complete) {
	global.time += 1;
}

if (complete) {
	with (oPlayer) {
		repeat(3) {
			instance_create_layer(x,y, "Particles", oTokenParticle);
		}
	}
}