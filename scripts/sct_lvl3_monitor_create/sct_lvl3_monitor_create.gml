positionsPopulation1[sprite_get_width(spr_monitor)-1]=0;
positionsPopulation2[sprite_get_width(spr_monitor)-1]=0;
positionsPopulation3[sprite_get_width(spr_monitor)-1]=0;
positionsPopulation4[sprite_get_width(spr_monitor)-1]=0;

//visualRatioPopulation1=10;
//visualRatioPopulation2=20;

for (i=0;i<sprite_get_width(spr_monitor);i++){
	positionsPopulation1[i]=floor((log2(global.totalPopulation1+1)/log2(global.population1Threshold+1))*sprite_get_height(spr_monitor));
	positionsPopulation2[i]=floor((log2(global.totalPopulation2+1)/log2(global.population2Threshold+1))*sprite_get_height(spr_monitor));
	positionsPopulation3[i]=floor((log2(global.totalPopulation3+1)/log2(global.population3Threshold+1))*sprite_get_height(spr_monitor));
	positionsPopulation4[i]=floor((log2(global.totalPopulation4+1)/log2(global.population4Threshold+1))*sprite_get_height(spr_monitor));
}