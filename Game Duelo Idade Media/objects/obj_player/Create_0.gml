// Create
vel = 3;
velh = 0;
velv = 0;
move_dir = 0;

// Variáveis de movimentação
move_speed = 4;           // Velocidade do jogador
attack_range = 96;        // Alcance da espada (em pixels)
cooldown = 60;            // Cooldown entre os ataques
cooldown_timer = 0;       // Temporizador de cooldown para ataque
global.health_player = 200;  // Define uma variável global para teste

// Estados
is_attacking = false;     // Verifica se o jogador está atacando
global.game_over = false; // Inicializa a variável global

// Animação de ataque
sprite_index = spr_player;    // Define a sprite inicial como a de movimento
image_speed = 0;              // Inicia a animação parada
attack_fps = 5 / room_speed;  // Velocidade da animação de ataque para 5 FPS
