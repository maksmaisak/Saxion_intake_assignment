/// create_explosion(x, y)

var xx = argument0;
var yy = argument1;

var explosion = instance_create(xx, yy, obj_explosion);

explosion.radius_max = obj_config.explosion_radius;
explosion.explosion_time = obj_config.explosion_time * room_speed;

return explosion;
