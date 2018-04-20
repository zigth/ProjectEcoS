/// @description Draw the text into the textbox
draw_self();
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if blink and selected{
	draw_text(x,y,text+"|");
}else{
	draw_text(x,y,text);
}
