/// @description Insert description here
// You can write your code in this editor

if checkcondition {
	draw_sprite(spr_checkbox_positive,image_index,x,y);
}else{
	draw_self();
}

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x+sprite_width+string_width(text)/2+5,y,text);