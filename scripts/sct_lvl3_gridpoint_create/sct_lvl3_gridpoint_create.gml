dots1[global.population1VisualThreshold/global.representationratio-1,1]=0;

for (i=0;i<global.population1VisualThreshold/global.representationratio;i++){
	dots1[i,0]=x+random(global.gridPointSize-sprite_get_width(spr_bluedot2));
	dots1[i,1]=y+random(global.gridPointSize-sprite_get_height(spr_bluedot2));
}

dots2[global.population2VisualThreshold/global.representationratio-1,1]=0;

for (i=0;i<global.population2VisualThreshold/global.representationratio;i++){
	dots2[i,0]=x+random(global.gridPointSize-sprite_get_width(spr_greendot5));
	dots2[i,1]=y+random(global.gridPointSize-sprite_get_height(spr_greendot5));
}

dots3[global.population3VisualThreshold/global.representationratio-1,1]=0;

for (i=0;i<global.population3VisualThreshold/global.representationratio;i++){
	dots3[i,0]=x+random(global.gridPointSize-sprite_get_width(spr_dgreendot2));
	dots3[i,1]=y+random(global.gridPointSize-sprite_get_height(spr_dgreendot2));
}

dots4[global.population4VisualThreshold/global.representationratio-1,1]=0;

for (i=0;i<global.population4VisualThreshold/global.representationratio;i++){
	dots4[i,0]=x+random(global.gridPointSize-sprite_get_width(spr_reddot3));
	dots4[i,1]=y+random(global.gridPointSize-sprite_get_height(spr_reddot3));
}

