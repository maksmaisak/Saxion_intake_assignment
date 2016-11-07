/// turret_repair()

with (obj_turret) {
    
    if (health_points < max_health_points) {
    
        health_points += obj_config.repair_health;
        health_points = min(health_points, max_health_points);
    }
}
