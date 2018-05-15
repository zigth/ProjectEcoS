/*******************************************************************************
 * Copyright (c) 2018 University of Luxembourg.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v2.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v20.html
 * 
 * Contributors:
 *     Thierry Zigrand - initial code and implementation
 *
 ******************************************************************************/

draw_sprite_ext(spr_editbox,image_index,x,y,1,selfHeight/sprite_height,0,c_white,1);

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

stringHeights=0;

for(i=0;i<global.reservesNumber;i++){
	draw_text(x+sprite_get_width(spr_textbox)/2+5,y+i*sprite_get_height(spr_textbox)+stringHeights+string_height(global.reservesNames[i])/2+(i+1)*10,global.reservesNames[i]);
	stringHeights+=string_height(global.reservesNames[i]);
}
if global.reservesNumber>0 {
	draw_sprite_ext(spr_seperator,image_index,x,y+global.reservesNumber*(sprite_get_height(spr_textbox)+10)+stringHeights+8,1,(sprite_width)/sprite_get_height(spr_seperator),90,c_white,1);
}
for(i=0;i<global.populationNumber;i++){
	draw_text(x+sprite_get_width(spr_textbox)/2+5,y+(i+global.reservesNumber)*sprite_get_height(spr_textbox)+stringHeights+string_height(global.populationNames[i])/2+(i+global.reservesNumber+1)*10,global.populationNames[i]);
	stringHeights+=string_height(global.populationNames[i]);
}

draw_set_alpha(0.8);
draw_sprite(spr_gridpoint_tlayer,image_index,gridvaluex*global.gridPointSize,gridvaluey*global.gridPointSize);
draw_set_alpha(1);