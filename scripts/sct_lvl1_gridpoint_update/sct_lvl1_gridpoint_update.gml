if global.timeflow {
	for (i=0;i<min(global.population1[gridvaluex,gridvaluey],global.population1VisualThreshold)/global.representationratio;i++){
		for (j=0;j<2;j++){
			if(j==0){
				dots1[i,j]=x+random(global.gridPointSize-sprite_get_width(spr_reddot3));
			}else{
				dots1[i,j]=y+random(global.gridPointSize-sprite_get_height(spr_reddot3));
			}
		}
	}
	
	for (i=0;i<min(global.population2[gridvaluex,gridvaluey],global.population2VisualThreshold)/global.representationratio;i++){
		for (j=0;j<2;j++){
			if(j==0){
				dots2[i,j]=x+random(global.gridPointSize-sprite_get_width(spr_bluedot5));
			}else{
				dots2[i,j]=y+random(global.gridPointSize-sprite_get_height(spr_bluedot5));
			}
		}
	}
}