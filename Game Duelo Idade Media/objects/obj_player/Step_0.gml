/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var tecla_top = keyboard_check(ord("W"));
var tecla_bottom = keyboard_check(ord("S"));
var tecla_left = keyboard_check(ord("A"));
var tecla_right = keyboard_check(ord("D"));

var teclas = tecla_right - tecla_left !=0 || tecla_bottom - tecla_top !=0

move_dir = point_direction(0,0,tecla_right - tecla_left, tecla_bottom - tecla_top);

velh = lengthdir_x(vel * teclas,move_dir);
velv = lengthdir_y(vel * teclas,move_dir);

x+=velh
y+=velv