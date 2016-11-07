/// create_enemy(x, y)

var xx = argument0;
var yy = argument1;
var enemy = instance_create(xx, yy, obj_enemy);

var curr_wave = obj_wave_manager.current_wave_num;
var max_speed = get_enemy_speed_for_wave(curr_wave);
enemy.max_speed = max_speed;

enemy.attack_threshold = obj_config.enemy_attack_threshold;
enemy.attack_damage = obj_config.enemy_attack_damage;

enemy.score_value = obj_config.enemy_score_value;

var size_x = obj_config.enemy_size_x;
var size_y = obj_config.enemy_size_y;
with (enemy) {
    resize(size_x, size_y);
}

return enemy;
