/// draw_sprite_size(sprite, subimage, x, y, width, height)

var sprite = argument0;
var subimage = argument1;
var xx = argument2;
var yy = argument3;
var width = argument4;
var height = argument5;

spr_width = sprite_get_width(spr_bomb);
spr_height = sprite_get_height(spr_bomb);

scale_x = width / spr_width;
scale_y = height / spr_height;
    
draw_sprite_ext(
    sprite, 
    subimage, 
    xx, 
    yy,
    scale_x,
    scale_y,
    0.0,
    c_white,
    1.0
);
