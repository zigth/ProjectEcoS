/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_blackBackground,image_index,0,0,room_width/sprite_width,room_height/sprite_height,0,c_white,0.5);


draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

switch (tutorialstate) {
	case 1:
		draw_text(10,10,"1");
		break;
	case 2:
		draw_text(10,20,"2");
		break;	
	case 3:
		draw_text(10,20,"3");
		break;
	default:
		show_message("error in tutorial draw function");	
}
