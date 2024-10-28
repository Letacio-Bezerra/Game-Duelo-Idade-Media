// Variáveis de movimento
move_speed = 2;        // Velocidade de movimento
attack_range = 64;     // Distância mínima para ataque (em pixels)
cooldown = 90;         // Tempo de espera entre os ataques
cooldown_timer = 0;    // Contador para o tempo de ataque

// Estados
is_attacking = false;      // Verifica se o inimigo está atacando
target = obj_player;       // O alvo é o jogador

// Variáveis de animação
sprite_index = spr_enemy;  // Define a sprite inicial como a de movimento
image_speed = 0;           // Inicializa a animação como parada