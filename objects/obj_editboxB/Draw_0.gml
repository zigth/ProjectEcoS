/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_editboxB,image_index,x,y,selfWidth/sprite_width,selfHeight/sprite_height,0,c_white,1);

draw_sprite_ext(spr_editboxB_bars,image_index,x+10,y+10,(selfWidth/*-sprite_get_width(spr_closebutton)-30*/-20)/sprite_get_width(spr_editboxB_bars),1,0,c_white,1);

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);



stringWidths=0;
for(i=0;i<global.reservesNumber;i++){
	draw_text(x+stringWidths+max(string_width(global.reservesNames[i])/2,sprite_get_width(spr_plusbutton)+5)+i*(10/*20+sprite_get_width(spr_plusbutton)*/)+20,y+selfHeight-5-textHeight/2-sprite_get_height(spr_plusbutton),global.reservesNames[i]);
	if i>0 {
		draw_sprite_ext(spr_seperator,image_index,x+stringWidths+i*10+14,y+selfHeight-5-textHeight-sprite_get_height(spr_plusbutton),1,(textHeight+sprite_get_height(spr_plusbutton)+2)/sprite_get_height(spr_seperator),0,c_white,1);
	}
	
	script_execute(sctDrawReserves);
	
	draw_sprite_ext(bar,image_index,x+stringWidths+string_width(global.reservesNames[i])/2+i*(10/*20+sprite_get_width(spr_plusbutton)*/)+20,y+10+sprite_get_height(spr_editboxB_bars),1,ratio,0,c_white,1);
	
	stringWidths+=max(string_width(global.reservesNames[i]),sprite_get_width(spr_plusbutton)*2+10); //get rid of max() opt
}
if global.reservesNumber>0 {
		draw_sprite_ext(spr_seperator,image_index,x+stringWidths+(global.reservesNumber)*10+14,y+10,1,(selfHeight-13)/sprite_get_height(spr_seperator),0,c_white,1);
}
for(i=0;i<global.populationNumber;i++){
	draw_text(x+stringWidths+max(string_width(global.populationNames[i])/2,sprite_get_width(spr_plusbutton)+5)+(i+global.reservesNumber)*(10/*20+sprite_get_width(spr_plusbutton)*/)+20,y+selfHeight-5-textHeight/2-sprite_get_height(spr_plusbutton),global.populationNames[i]);
	if i>0 {
		draw_sprite_ext(spr_seperator,image_index,x+stringWidths+(i+global.reservesNumber)*10+14,y+selfHeight-5-textHeight-sprite_get_height(spr_plusbutton),1,(textHeight+sprite_get_height(spr_plusbutton)+2)/sprite_get_height(spr_seperator),0,c_white,1);
	}
	
	script_execute(sctDraw);
	
	draw_sprite_ext(bar,image_index,x+stringWidths+string_width(global.populationNames[i])/2+(i+global.reservesNumber)*(10/*20+sprite_get_width(spr_plusbutton)*/)+20,y+10+sprite_get_height(spr_editboxB_bars),1,ratio,0,c_white,1);
	
	stringWidths+=max(string_width(global.populationNames[i]),sprite_get_width(spr_plusbutton)*2+10); //get rid of max() opt
}

/*for(i=0;i<global.populationNumber;i++){
	draw_text(x+stringWidths+string_width(global.populationNames[i])/2+i*(10/*20+sprite_get_width(spr_plusbutton)*//*)+20,y+selfHeight-5-textHeight/2-sprite_get_height(spr_plusbutton),global.populationNames[i]);
	if i>0 {
		draw_sprite_ext(spr_seperator,image_index,x+stringWidths+i*10+14,y+selfHeight-5-textHeight-sprite_get_height(spr_plusbutton),1,(textHeight+sprite_get_height(spr_plusbutton)+2)/sprite_get_height(spr_seperator),0,c_white,1);
	}
	
	script_execute(sctDraw);
	
	draw_sprite_ext(bar,image_index,x+stringWidths+string_width(global.populationNames[i])/2+i*(10/*20+sprite_get_width(spr_plusbutton)*//*)+20,y+10+sprite_get_height(spr_editboxB_bars),1,ratio,0,c_white,1);
	
	stringWidths+=max(string_width(global.populationNames[i]),sprite_get_width(spr_plusbutton*2)+10); //get rid of max() opt
}*/


draw_set_alpha(0.8);
draw_sprite(spr_gridpoint_tlayer,image_index,gridvaluex*global.gridPointSize,gridvaluey*global.gridPointSize);
draw_set_alpha(1);

//draw_text(10,10,string(pluscounter))
//draw_text(50,30,string(global.totalPopulation2))