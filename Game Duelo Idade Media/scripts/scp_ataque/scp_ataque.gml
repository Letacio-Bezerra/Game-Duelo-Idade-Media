function attack_enemy() {
    // Varre todos os inimigos para verificar a distância
    with (obj_enemy) {
        // Verifica se o inimigo está dentro do alcance de ataque do jogador
        if (point_distance(other.x, other.y, x, y) <= other.attack_range) {
            health -= 5; // O inimigo perde vida
            show_debug_message("Você atacou o inimigo! Vida do inimigo: " + string(health));
        }
    }
}


function attack_player(distance_to_player) {
    if (distance_to_player <= attack_range) {
        if (instance_exists(target)) {
            global.health_player -= 10;  // Usando a variável global para teste
            show_debug_message("O inimigo atacou o jogador! Vida do jogador: " + string(global.health_player));
        }
    }
}


