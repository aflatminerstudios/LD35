///scrChooseDir(sheep)
//return array [0] = x, [1] = y
//-1 means no sheep within range

var sheep = argument0;
var maxDist = 200;
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

//Loop through each sheep
with (objSheep) {
  //Only consider if within maxDist of main sheep, and is not same sheep
  var dist = scrEucDist(sheep, id);
  if ((id != sheep.id) && (dist < maxDist)) {
    center[0] += x;
    center[1] += y;
    count++;
    
    if (dist < collideDist) {
      collided[0] +=  x - other.x;
      collided[1] += y - other.y;
      collidedCount++;
    }
    
  }  
}
if (count > 0) {
center[0] /= count;
center[1] /= count;
}

if (collidedCount > 0) {
  collided[0] /= collidedCount;
  collided[1] /= collidedCount;
}

if (count == 0) {
  center[0] = -1;
  center[1] = -1;
  array[0] = x;
  array[1] = y;  
} else {
  array[0] = center[0];
  array[1] = center[1];
}

if (collided[0] == 0 && collided[1] == 0) {
  if (center[0] == -1) {
    array[0] = -1;
    array[1] = -1;
  }
} else {
  array[0] = (array[0] + collided[0]) / 2;
  array[1] = (array[1] + collided[1]) / 2;
}
/*
var coll = collision_circle(x, y, (sprite_width * 1.5), objSheep, false, true);

if (coll != noone) {
  array[0] = -1 * (array[0] + coll.x) / 2;
  array[1] = -1 * (array[1] + coll.y) / 2;
} else if (center[0] == -1) {
  array[0] = -1;
  array[1] = -1;
}
*/

return array;

