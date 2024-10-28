// Desenhar o sprite do jogador
draw_self(); 

// Exibir a vida do jogador acima da cabeça
draw_text(x - 20, y - 40, "Vida: " + string(global.health_player));
