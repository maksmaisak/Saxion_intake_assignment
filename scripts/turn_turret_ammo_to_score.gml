/// turn_turret_ammo_to_score()

with (obj_turret) {
    
    var bombs_bonus_score = obj_config.bomb_score_value * num_bombs;
    score += bombs_bonus_score;
    num_bombs = 0;
}
