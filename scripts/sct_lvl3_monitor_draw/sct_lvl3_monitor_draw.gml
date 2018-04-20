
for(i=0;i<sprite_get_width(spr_monitor);i++){
	draw_sprite(spr_bluedot2,image_index,x+i,y+sprite_get_height(spr_monitor)-positionsPopulation1[i]);
	draw_sprite(spr_greendot2,image_index,x+i,y+sprite_get_height(spr_monitor)-positionsPopulation2[i]);
	draw_sprite(spr_dgreendot2,image_index,x+i,y+sprite_get_height(spr_monitor)-positionsPopulation3[i]);
	draw_sprite(spr_reddot2,image_index,x+i,y+sprite_get_height(spr_monitor)-positionsPopulation4[i]);
}
