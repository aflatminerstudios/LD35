///scrSpawnPic(gameCtrl)

var gameCtrl = argument0;

var whichSprite = gameCtrl.pics[global.numComplete];//choose(sprNazcaOval, sprNazcaDonut, sprNazcaA, sprHeart, sprC, sprCircle, sprCorners, sprDoomSpiral, sprH);
show_debug_message("Picked new image in scrSpawnPic.")
gameCtrl.pic = instance_create(400,300,objNazcaPicture);
gameCtrl.ready = false;

/*
var matchFound = true;

while (matchFound) {
  matchFound = false;
for (var i = 0; i < gameCtrl.howManyPics; ++i) {
  show_debug_message("Finding sprite " + string(i));
  if (whichSprite == gameCtrl.pics[i]) {
    matchFound = true;
    break;
  }
}
}
*/

gameCtrl.pic.sprite_index = whichSprite;

//gameCtrl.pics[gameCtrl.howManyPics] = gameCtrl.pic.sprite_index;

alarm[0] = 1 * room_speed;

gameCtrl.minipics[gameCtrl.howManyPics] = noone;

