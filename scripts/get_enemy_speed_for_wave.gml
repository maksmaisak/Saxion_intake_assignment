/// get_enemy_speed_for_wave(current_wave_num)

var current_wave_num = argument0;

var speed_0 = obj_config.enemy_speed_0;
var speed_1 = obj_config.enemy_speed_1;
var waves_until_speed_1 = obj_config.waves_until_speed_1;

var t = current_wave_num / waves_until_speed_1;
t = log2(t + 1);

var speed_per_second = lerp(speed_0, speed_1, t);
var speed_deviation = obj_config.enemy_speed_deviation;
speed_per_second += random_range(-speed_deviation, speed_deviation);

var speed_per_tick = speed_per_second / room_speed;

return speed_per_tick;
