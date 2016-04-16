///scrBasicFlock(sheep)
//return array [0] = x, [1] = y
//-1 means no sheep within range

var sheep = argument0;
var collideDist = sprite_width * 1.5;

var array;

//center[0] = center.x, center[1] = center.y
var center;
center[0] = 0;
center[1] = 1;
var count = 0;

var collided;
collided[0] = 0;
collided[1] = 0;
var collidedCount = 0;

var directions = 0;
var speeds = 0;
var moveCount = 0;
var dirxy;

//Loop through each sheep
with (objSheep) {
  //Only consider if within maxDist of main sheep, and is not same sheep
  var dist = scrEucDist(sheep, id);
  var dir = point_direction(sheep.x, sheep.y, x, y);
  if ((id != sheep.id) && (dist < global.maxDist) && (abs(dir - sheep.direction) < 90)) {
    center[0] += x;
    center[1] += y;
    count++;
    
    if (dist < collideDist) {
      collided[0] +=  x - sheep.x;
      collided[1] += y - sheep.y;
      collidedCount++;
    }
    
  }  
  
  //This is a little weird, because some are affected by old direction and some by new
  //Come back to this if we have time and see if we can figure this out without making
  //it too time consuming
  if (speed > 0) {
    directions += direction;
    speeds += speed;
    moveCount++;
  }
}

if (collidedCount > 0) {
  collided[0] /= collidedCount;
  collided[1] /= collidedCount;
}

//Take into account center of local herd
if (count == 0) {
  center[0] = -1;
  center[1] = -1;
  array[0] = x;
  array[1] = y;  
} else {  
  center[0] /= count;
  center[1] /= count;
  array[0] = center[0];
  array[1] = center[1];
}

//Take into account if any in local herd are moving
if (moveCount > 0) {
  directions /= moveCount;
  speeds /= moveCount;
  dirxy[0] = lengthdir_x(speeds, directions);
  dirxy[1] = lengthdir_y(speeds, directions);
  //show_debug_message("dirxy = (" + string(dirxy[0]) + ", " + string(dirxy[1]) + ") & array = (" + string(array[0]) + ", " + string(array[1]) + ")");
  array[0] = (array[0] + dirxy[0]);
  array[1] = (array[1] + dirxy[1]);
//  show_debug_message(string(moveCount) + " moving " + string(speeds) + ", " + string(directions));
}
  
/*
if (collided[0] == 0 && collided[1] == 0) {
  if (center[0] == -1) {
    array[0] = -1;
    array[1] = -1;
  }
} else {
  array[0] = (array[0] + collided[0]) / 2;
  array[1] = (array[1] + collided[1]) / 2;
}*/

//Try to avoid colliding with other sheep
var coll = collision_circle(x, y, (sprite_width * distMult), objSheep, false, true);

if (coll != noone) {
  distMult = random(1) + 1;
  array[0] = -1 * (array[0] + coll.x) / 2;
  array[1] = -1 * (array[1] + coll.y) / 2;
} else if (center[0] == -1 && moveCount == 0) {
  array[0] = -1;
  array[1] = -1;
}


return array;

