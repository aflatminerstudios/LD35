///scrSpawnPic(gameCtrl)

var gameCtrl = argument0;

var whichSprite = choose(sprNazcaOval, sprNazcaDonut, sprNazcaA, sprHeart, sprC, sprCircle, sprCorners, sprDoomSpiral, sprH);

gameCtrl.pic = instance_create(400,300,objNazcaPicture);
gameCtrl.pic.sprite_index = whichSprite;

alarm[0] = 1 * room_speed;

gameCtrl.minipics[gameCtrl.howManyPics] = noone;

