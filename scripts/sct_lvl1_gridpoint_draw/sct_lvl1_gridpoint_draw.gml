for (i=0;i<min(global.population1[gridvaluex,gridvaluey],global.population1VisualThreshold)/global.representationratio;i++){
	draw_sprite(spr_reddot3,image_index,dots1[i,0],dots1[i,1]);
}

for (i=0;i<min(global.population2[gridvaluex,gridvaluey],global.population2VisualThreshold)/global.representationratio;i++){
	draw_sprite(spr_bluedot5,image_index,dots2[i,0],dots2[i,1]);
}