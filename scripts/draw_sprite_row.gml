/// draw_sprite_row(sprite, subimg, x, y, width, height, num_sprites)

var sprite = argument0;
var subimg = argument1;
var row_x = argument2;
var row_y = argument3;
var icon_width = argument4;
var icon_height = argument5;
var num_sprites = argument6;

var row_width = icon_width * num_sprites;

for (var i = 0; i < num_sprites; i += 1) {
    
    var icon_x = (
        row_x - (row_width / 2) +
        icon_width / 2 +
        icon_width * i
    );
    
    var icon_y = row_y;
    
    draw_sprite_size(
        sprite, 
        subimg,
        icon_x, 
        icon_y, 
        icon_width,
        icon_height
    );
}
