/// draw_enemy_trajectory()

// Draw the enemy trajectory n seconds ahead (defined in config.ini)

var speed_x = lengthdir_x(speed, direction);
var speed_y = lengthdir_y(speed, direction);

var prediction_time = obj_config.enemy_trajectory_time * room_speed;

var end_x = x + speed_x * prediction_time;
var end_y = y + speed_y * prediction_time;

draw_set_alpha(0.5);
var line_width = obj_config.enemy_trajectory_width; 
draw_line_width_colour(x, y, end_x, end_y, line_width, c_red, c_red);

draw_reset();
