///scrSpawnPic(gameCtrl)

var gameCtrl = argument0;

var whichSprite = choose(sprNazcaOval, sprNazcaDonut, sprNazcaA, sprHeart, sprC, sprCircle, sprCorners, sprDoomSpiral, sprH);

gameCtrl.pic = instance_create(400,300,objNazcaPicture);

var matchFound = true;

while (matchFound) {
  matchFound = false;
for (var i = 0; i < gameCtrl.howManyPics; ++i) {
  if (whichSprite == gameCtrl.pics[i]) {
    matchFound = true;
    break;
  }
}
}

gameCtrl.pic.sprite_index = whichSprite;

gameCtrl.pics[gameCtrl.howManyPics] = gameCtrl.pic.sprite_index;

alarm[0] = 1 * room_speed;

gameCtrl.minipics[gameCtrl.howManyPics] = noone;

