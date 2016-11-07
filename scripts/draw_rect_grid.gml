/// draw_rect_grid(x, y, width, height, num_lines_x, num_lines_y)

var start_x = argument0;
var start_y = argument1;

var width_total = argument2;
var height_total = argument3;

var num_lines_x = argument4;
var num_lines_y = argument5;

var line_spacing_x = width_total / num_lines_x;
var line_spacing_y = width_total / num_lines_y;

var i;
for (i = 0; i < num_lines_y; i += 1) {

    var current_line_y = start_y + line_spacing_y * i;
    var from_x = start_x;
    var to_x = start_x + width_total;
    
    draw_line(from_x, current_line_y, to_x, current_line_y);
}

for (i = 0; i < num_lines_x; i += 1) {

    var current_line_x = start_x + line_spacing_x * i;
    var from_y = start_y;
    var to_y = start_y + height_total;
    
    draw_line(current_line_x, from_y, current_line_x, to_y);
}
