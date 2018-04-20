if global.timeflow {
	for(i=1;i<sprite_get_width(spr_monitor);i++){
		positionsPopulation1[i-1]=positionsPopulation1[i];
		positionsPopulation2[i-1]=positionsPopulation2[i];
		positionsPopulation3[i-1]=positionsPopulation3[i];
		positionsPopulation4[i-1]=positionsPopulation4[i];
	}
}