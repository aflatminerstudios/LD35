///scrEndPicture(picture, gameCtrl)

var picture = argument0;
var gameCtrl = argument1;

picture.visible = true;

global.pcts[global.numComplete] = scrGetPicturePercent(picture);
global.times[global.numComplete] = gameCtrl.timer;

global.numComplete++;



if (gameCtrl.howManyPics < gameCtrl.picsPerGame) {
  gameCtrl.alarm[2] = gameCtrl.timeBetweenRounds * room_speed;
} else {
  scrEndGame();
}
