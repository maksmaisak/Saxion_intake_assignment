/// create_turret(x, y)

var xx = argument0;
var yy = argument1;

var turret = instance_create(xx, yy, obj_turret);

turret.health_points = obj_config.turret_health;
turret.max_health_points = obj_config.turret_health;

turret.num_bombs = obj_config.turret_num_bombs;
turret.can_shoot_bombs = true;

var lasers_per_second = obj_config.turret_lasers_per_second;
turret.laser_cooldown = room_speed / lasers_per_second;
turret.current_laser_cooldown = 0;

with (turret) {
    var size = obj_config.turret_size;
    resize(size, size);
}

return turret;
