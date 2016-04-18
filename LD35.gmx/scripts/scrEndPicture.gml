///scrEndPicture(picture, gameCtrl)

var picture = argument0;
var gameCtrl = argument1;

picture.visible = true;

instance_create(400, 300, objCountdown);

gameCtrl.alarm[2] = gameCtrl.timeBetweenRounds * room_speed;

