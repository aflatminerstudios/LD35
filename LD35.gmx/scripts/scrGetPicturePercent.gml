/// scrGetPicturePercent(nazcaPicture)
/// params - objNascaPicture
/// Returns the percent of sheep in the level that are over the specified Nasca picture

var nazcaPicture = argument0;

var totalSheep = 0;
var sheepInside = 0;
with(objSheep) {
    totalSheep++;
    if(place_meeting(x, y, nazcaPicture)) {
        sheepInside++;
    }
}

if(totalSheep > 0)
    return 100.0*sheepInside/totalSheep;
else
    return 0.0;
