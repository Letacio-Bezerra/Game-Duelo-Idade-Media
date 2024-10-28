var tecla_top = keyboard_check(ord("W"));
var tecla_bottom = keyboard_check(ord("S"));
var tecla_left = keyboard_check(ord("A"));
var tecla_right = keyboard_check(ord("D"));

var teclas = tecla_right - tecla_left !=0 || tecla_bottom - tecla_top !=0

move_dir = point_direction(0,0,tecla_right - tecla_left, tecla_bottom - tecla_top);

velh = lengthdir_x(vel * teclas,move_dir);
velv = lengthdir_y(vel * teclas,move_dir);

if(place_meeting(x+velh,y,obj_parede)){
	
	while(!place_meeting(x+sign(velh),y,obj_parede)){
		x+=sign(velh)
	}
	velh = 0
}

x+=velh

if(place_meeting(x,y+velv,obj_parede)){
	
	while(!place_meeting(x,y+sign(velv),obj_parede)){
		y+=sign(velh)
	}
	velv = 0
}

y+=velv


// Verifica o cooldown do ataque
if (cooldown_timer > 0) {
    cooldown_timer--;
} else {
    is_attacking = false; // Não está mais atacando após o cooldown
}

// Iniciar o ataque ao pressionar a tecla de ataque (botão esquerdo do mouse ou tecla de ataque)
if (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(ord("E"))) {
    if (cooldown_timer <= 0) {
        is_attacking = true;
        cooldown_timer = cooldown; // Reinicia o cooldown
		sprite_index = spr_playerAtaque;  // Troca para a sprite de ataque
        image_speed = 0.5;
        attack_enemy(); // Chama a função de ataque
    }
}

// Controle da animação de ataque
if (is_attacking) {
    // Chama a função de ataque quando a animação atinge o último quadro
    if (image_index >= image_number - 1) {
        attack_enemy();               // Executa o ataque
        is_attacking = false;         // Reseta o estado de ataque
        sprite_index = spr_player;    // Retorna à sprite de movimento
        image_speed = 0;              // Pausa a animação
        image_index = 0;              // Reseta o quadro da sprite de movimento
    }
} else {
    sprite_index = spr_player;        // Garante que o player exiba a sprite de movimento quando não está atacando
    image_speed = 0;
}