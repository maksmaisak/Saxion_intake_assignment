/// resize(width, height)

var width = argument0;
var height = argument1;

var sprite_size_x = sprite_get_width(sprite_index);
var sprite_size_y = sprite_get_height(sprite_index);

image_xscale = width / sprite_size_x;
image_yscale = height / sprite_size_y;
