///scrNormalizeVector(x, y)

var vX = argument0;
var vY = argument1;

var array;

var length = point_distance(0, 0, vX, vY);

array[0] = vX / length;
array[1] = vY / length;

return array;
