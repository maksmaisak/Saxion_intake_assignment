/// create_enemy_spawner()

spawner = instance_create(0, 0, obj_enemy_spawner);

var num_to_spawn = obj_config.wave_base_num_enemies;
var total_spawn_time = obj_config.wave_base_duration;
var spawn_cooldown = total_spawn_time / num_to_spawn;

spawner.num_to_spawn = num_to_spawn;
spawner.spawn_cooldown = spawn_cooldown;
spawner.ticks_until_spawn = 0;

spawner.radius_max = min(room_width, room_height) / 2;

// A half of the view's diagonal
spawner.radius_min = point_distance(0, 0, view_wview[0], view_hview[0]) / 2;

return spawner;
