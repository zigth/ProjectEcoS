if global.timeflow {
	for (i=0;i<min(global.population1[gridvaluex,gridvaluey],global.population1VisualThreshold)/global.representationratio;i++){
		dots1[i,0]=x+random(global.gridPointSize-sprite_get_width(spr_bluedot2));
		dots1[i,1]=y+random(global.gridPointSize-sprite_get_height(spr_bluedot2));
	}
	
	for (i=0;i<min(global.population2[gridvaluex,gridvaluey],global.population2VisualThreshold)/global.representationratio;i++){
		dots2[i,0]=x+random(global.gridPointSize-sprite_get_width(spr_greendot5));
		dots2[i,1]=y+random(global.gridPointSize-sprite_get_height(spr_greendot5));
	}
	
	for (i=0;i<min(global.population3[gridvaluex,gridvaluey],global.population3VisualThreshold)/global.representationratio;i++){
		dots3[i,0]=x+random(global.gridPointSize-sprite_get_width(spr_dgreendot2));
		dots3[i,1]=y+random(global.gridPointSize-sprite_get_height(spr_dgreendot2));
	}
	
	for (i=0;i<min(global.population4[gridvaluex,gridvaluey],global.population4VisualThreshold)/global.representationratio;i++){
		dots4[i,0]=x+random(global.gridPointSize-sprite_get_width(spr_reddot3));
		dots4[i,1]=y+random(global.gridPointSize-sprite_get_height(spr_reddot3));
	}
}