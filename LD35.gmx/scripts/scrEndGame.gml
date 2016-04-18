///scrEndGame()


for (var i = 0; i < global.numComplete; ++i) {
  var temp = global.pcts[i] * 1000;
  if (i != 0) {
    temp /= sqrt((global.times[i] - global.times[i-1]));    
  } else {
    temp /= sqrt(global.times[i]);
  }
  global.scores[i] = floor(temp);
  score += floor(temp);
}

with (objSheep) {
  instance_destroy();
}

with (objFarmer) {
  instance_destroy();
}

with (objDog) {
  instance_destroy();
}

with (objBark) {
  instance_destroy();
}

with (objBarkVisible) {
  instance_destroy();
}

with (objBird) {
  instance_destroy();
}

with (objBirdSpawner) {
  instance_destroy();
}

with (objBucky) {
  instance_destroy();
}

with (objStopwatch) {
  instance_destroy();
}

with (objSignPost) {
  instance_destroy();
}

with (objFenceForeground) {
  instance_destroy();
}

with (objSprintMeter) {
  instance_destroy();
}

var o = instance_create(400, 300, objGameOver);

o.alarm[0] = 2 * room_speed;


