
for (i=0;i<min(global.population3[gridvaluex,gridvaluey],global.population3VisualThreshold)/global.representationratio;i++){
	draw_sprite(spriteP3,image_index,dots3[i,0],dots3[i,1]);
}

for (i=0;i<min(global.population2[gridvaluex,gridvaluey],global.population2VisualThreshold)/global.representationratio;i++){
	draw_sprite(spriteP2,image_index,dots2[i,0],dots2[i,1]);
}

for (i=0;i<min(global.population4[gridvaluex,gridvaluey],global.population4VisualThreshold)/global.representationratio;i++){
	draw_sprite(spriteP4,image_index,dots4[i,0],dots4[i,1]);
}

for (i=0;i<min(global.population1[gridvaluex,gridvaluey],global.population1VisualThreshold)/global.representationratio;i++){
	draw_sprite(spriteP1,image_index,dots1[i,0],dots1[i,1]);
}

