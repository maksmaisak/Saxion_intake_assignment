/// create_wave_manager()

var waves = instance_create(0, 0, obj_wave_manager);

waves.current_wave_num = 0;
waves.next_wave_imminent = false;
waves.waves_before_repair = obj_config.repair_interval;

return waves;
