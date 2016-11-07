/// load_config()

ini_open('config.ini');

var sect = 'bomb';
bomb_speed = ini_read_real(sect, 'speed', 0);
bomb_score_value = ini_read_real(sect, 'score_value', 0);
bomb_icon_size = ini_read_real(sect, 'icon_size', 0);
bomb_icon_max_per_row = ini_read_real(sect, 'max_icons_per_row', 0);

var sect = 'enemy_attack';
enemy_attack_threshold = ini_read_real(sect, 'attack_threshold', 0);
enemy_attack_damage = ini_read_real(sect, 'attack_damage', 0);

var sect = 'enemy_score';
enemy_score_value = ini_read_real(sect, 'score_value', 0);

var sect = 'enemy_size';
enemy_size_x = ini_read_real(sect, 'x', 0);
enemy_size_y = ini_read_real(sect, 'y', 0);

var sect = 'enemy_speed';
enemy_speed_0 = ini_read_real(sect, 'speed_0', 0);
enemy_speed_1 = ini_read_real(sect, 'speed_1', 0);
waves_until_speed_1 = ini_read_real(sect, 'waves_until_speed_1', 0);
enemy_speed_deviation = ini_read_real(sect, 'speed_deviation', 0);

var sect = 'enemy_trajectory';
enemy_trajectory_time = ini_read_real(sect, 'time', 0);
enemy_trajectory_enabled = ini_read_real(sect, 'enabled', 0);
enemy_trajectory_width = ini_read_real(sect, 'width', 0);

var sect = 'explosion';
explosion_time = ini_read_real(sect, 'time', 0);
explosion_radius = ini_read_real(sect, 'radius', 0);

var sect = 'grid';
grid_num_circles = ini_read_real(sect, 'num_circles', 0);
grid_num_lines = ini_read_real(sect, 'num_lines', 0);

var sect = 'laser'
laser_enabled = ini_read_real(sect, 'enabled', 0);

var sect = 'repair';
repair_interval = ini_read_real(sect, 'interval', 0);
repair_health = ini_read_real(sect, 'health', 0);

var sect = 'wave_enemies';
wave_base_num_enemies = ini_read_real(sect, 'base_num_enemies', 0);
wave_base_duration = ini_read_real(sect, 'base_wave_duration', 0);

var sect = 'turret';
turret_size = ini_read_real(sect, 'size', 0);
turret_health = ini_read_real(sect, 'health', 0);
turret_num_bombs = ini_read_real(sect, 'num_bombs', 0);
turret_lasers_per_second = ini_read_real(sect, 'lasers_per_second', 0);

var sect = 'time';
time_between_waves = ini_read_real(sect, 'time_between_waves', 0);

var sect = 'cursor';
cursor_size = ini_read_real(sect, 'size', 0);

ini_close();
