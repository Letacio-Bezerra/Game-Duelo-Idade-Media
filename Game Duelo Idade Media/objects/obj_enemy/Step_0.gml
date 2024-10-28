// Step
// Calcular a distância entre o inimigo e o jogador
var dist_x = target.x - x;
var dist_y = target.y - y;
var distance_to_player = point_distance(x, y, target.x, target.y); // Calcula a distância sempre no Step

// Se estiver longe do jogador, move-se em direção a ele
if (distance_to_player > attack_range) {
    var angle = point_direction(x, y, target.x, target.y);
    var move_x = lengthdir_x(move_speed, angle);
    var move_y = lengthdir_y(move_speed, angle);
    
    x += move_x;
    y += move_y;
    
    // Reseta a animação de ataque e troca a sprite de volta para movimento
    if (is_attacking) {
        is_attacking = false;
        sprite_index = spr_enemy;  // Volta para a sprite de movimento
        image_speed = 0;           // Pausa a animação
        image_index = 0;           // Retorna ao quadro inicial da sprite de movimento
    }
} else {
    // Se estiver dentro do alcance, iniciar o ataque
    if (cooldown_timer <= 0) {
        is_attacking = true;
        sprite_index = spr_enemyAtaque;  // Troca para a sprite de ataque
        image_speed = 0.5;               // Define a velocidade da animação de ataque (ajuste conforme necessário)

        // Chama a função de ataque
        attack_player(distance_to_player); // Passa a distância como argumento
        cooldown_timer = cooldown; // Reinicia o cooldown
    } else {
        cooldown_timer--; // Diminui o cooldown a cada frame
    }
}

// Se o cooldown está ativo, reseta o estado de ataque ao final da animação
if (cooldown_timer > 0) {
    if (is_attacking && image_index >= image_number - 1) {
        is_attacking = false;
        sprite_index = spr_enemy;  // Volta para a sprite de movimento
        image_speed = 0;           // Pausa a animação após o ataque
    }
}
