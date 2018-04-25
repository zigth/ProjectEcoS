spriteP1=spr_bluedot1;
spriteP2=spr_deco_tree2;
spriteP3=spr_grass;
spriteP4=spr_reddot2;

dots1[global.population1VisualThreshold/global.representationratio-1,1]=0;

for (i=0;i<global.population1VisualThreshold/global.representationratio;i++){
	dots1[i,0]=x+random(global.gridPointSize-sprite_get_width(spriteP1));
	dots1[i,1]=y+random(global.gridPointSize-sprite_get_height(spriteP1));
}

dots2[global.population2VisualThreshold/global.representationratio-1,1]=0;

for (i=0;i<global.population2VisualThreshold/global.representationratio;i++){
	dots2[i,0]=x+random(global.gridPointSize-sprite_get_width(spriteP2));
	dots2[i,1]=y+random(global.gridPointSize-sprite_get_height(spriteP2));
}

dots3[global.population3VisualThreshold/global.representationratio-1,1]=0;

for (i=0;i<global.population3VisualThreshold/global.representationratio;i++){
	dots3[i,0]=x+random(global.gridPointSize-sprite_get_width(spriteP3));
	dots3[i,1]=y+random(global.gridPointSize-sprite_get_height(spriteP3));
}

dots4[global.population4VisualThreshold/global.representationratio-1,1]=0;

for (i=0;i<global.population4VisualThreshold/global.representationratio;i++){
	dots4[i,0]=x+random(global.gridPointSize-sprite_get_width(spriteP4));
	dots4[i,1]=y+random(global.gridPointSize-sprite_get_height(spriteP4));
}

