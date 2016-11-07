/// create_cursor()

var cursor = instance_create(0, 0, obj_cursor);

cursor.size = obj_config.cursor_size;

// So that explosions don't hit the turret
cursor.min_distance_to_turret = obj_config.turret_size / 2 + obj_config.explosion_radius;

with(cursor) {
    resize(size, size);
}

return cursor;
