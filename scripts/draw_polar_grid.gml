/// draw_polar_grid(x, y, width, height, num_circles, num_lines)

var start_x = argument0;
var start_y = argument1;

var width = argument2;
var height = argument3;

var num_circles = argument4;
var num_lines = argument5;

var radius_x = width / 2;
var radius_y = height / 2;

var center_x = start_x + width / 2;
var center_y = start_y + height / 2;

// Draw the circles (ellipses actually)
for (var i = 1; i <= num_circles; i += 1) {
    
    var current_radius_x = (radius_x / num_circles * i);
    var x_min = center_x - current_radius_x;
    var x_max = center_x + current_radius_x;
    
    var current_radius_y = (radius_y / num_circles * i);
    var y_min = center_y - current_radius_y;
    var y_max = center_y + current_radius_y;
    
    draw_ellipse(x_min, y_min, x_max, y_max, true);
}

// Draw the radial lines
for (var i = 0; i < num_lines; i += 1) {
    
    var current_angle = (2 * pi) * (i / num_lines);
    
    var current_end_x = center_x + cos(current_angle) * radius_x * sqrt(2);
    var current_end_y = center_y + sin(current_angle) * radius_y * sqrt(2);
    
    draw_line(center_x, center_y, current_end_x, current_end_y);
}
