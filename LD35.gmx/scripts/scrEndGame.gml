///scrEndGame()


for (var i = 0; i < global.numComplete; ++i) {
  var temp = global.pcts[i] * 10000;
  if (i != 0) {
    temp /= (global.times[i] - global.times[i-1]);    
  } else {
    temp /= global.times[i];
  }
  
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


var o = instance_create(400, 300, objGameOver);

o.alarm[0] = 2 * room_speed;


