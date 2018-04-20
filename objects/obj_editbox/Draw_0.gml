/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_editbox,image_index,x,y,1,selfHeight/sprite_height,0,c_white,1);

stringHeights=0;
for(i=0;i<global.populationNumber;i++){
	draw_text(x+sprite_get_width(spr_textbox)/2+5,y+(2*i)*sprite_get_height(spr_textbox)/2+stringHeights+string_height(global.populationNames[i])/2+(i+1)*10,global.populationNames[i]);
	stringHeights+=string_height(global.populationNames[i]);
}

draw_set_alpha(0.8);
draw_sprite(spr_gridpoint_tlayer,image_index,gridvaluex*global.gridPointSize,gridvaluey*global.gridPointSize);
draw_set_alpha(1);