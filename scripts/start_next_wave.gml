/// start_next_wave()

with (obj_wave_manager) {

    current_wave_num += 1;
    
    if (waves_before_repair <= 0) {
        turret_repair();
        waves_before_repair = obj_config.repair_interval;
    }
    
    turn_turret_ammo_to_score();
    turret_rearm();
    
    create_enemy_spawner();

    next_wave_imminent = false;
}

with (obj_turret) {

    can_shoot_bombs = true;
}
