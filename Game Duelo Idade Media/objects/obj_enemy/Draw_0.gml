// Desenhar o sprite do inimigo
draw_self(); 

// Exibir a vida do inimigo acima da cabeça
draw_text(x - 20, y - 40, "Vida: " + string(health));
