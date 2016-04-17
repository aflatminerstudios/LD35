///scrEndPicture(picture, gameCtrl)

var picture = argument0;
var gameCtrl = argument1;

picture.visible = true;

if (gameCtrl.howManyPics < picsPerGame) {
  alarm[2] = timeBetweenRounds * room_speed;
}
