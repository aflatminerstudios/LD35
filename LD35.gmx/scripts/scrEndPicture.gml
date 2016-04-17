///scrEndPicture(picture, gameCtrl)

var picture = argument0;
var gameCtrl = argument1;

picture.visible = true;

if (gameCtrl.howManyPics < gameCtrl.picsPerGame) {
  gameCtrl.alarm[2] = gameCtrl.timeBetweenRounds * room_speed;
} else {
  scrEndGame();
}
