/// create_bomb(x, y, target_x, target_y)

var xx = argument0;
var yy = argument1;
var target_x = argument2;
var target_y = argument3;

var bomb = instance_create(xx, yy, obj_bomb);

with (bomb) {
    resize(10, 10);
}

bomb.direction = point_direction(bomb.x, bomb.y, target_x, target_y);
bomb.speed = obj_config.bomb_speed / room_speed;

var distance_to_target = point_distance(bomb.x, bomb.y, target_x, target_y);
bomb.ticks_until_detonation = distance_to_target / bomb.speed;

return bomb;
