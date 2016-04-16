///scrDisplayText(xPos, yPos, text, font, horizontalAlignment, verticalAlignment);
// Use -1 for font parameter for default 12pt Arial
xPos = argument0;
yPos = argument1;
text = argument2;
font = argument3;
horizontalAlignment = argument4;
verticalAlignment = argument5;

draw_set_font(font);
draw_set_halign(horizontalAlignment);
draw_set_valign(verticalAlignment);
draw_text(xPos, yPos, text);
