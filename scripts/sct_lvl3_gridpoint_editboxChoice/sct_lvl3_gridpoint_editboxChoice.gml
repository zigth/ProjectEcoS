
if global.editboxChoice{
	usedEditbox=obj_lvl3_editbox;
	usedEditboxWidth=sprite_get_width(spr_editbox);
}else{
	usedEditbox=obj_lvl3_editboxB;
	stringWidths=0;
	for(i=0;i<global.reservesNumber;i++){
		stringWidths+=max(string_width(global.reservesNames[i]),sprite_get_width(spr_plusbutton)*2+10); 
	}
	for(i=0;i<global.populationNumber;i++){
		stringWidths+=max(string_width(global.populationNames[i]),sprite_get_width(spr_plusbutton)*2+10); 
	} 
	usedEditboxWidth=stringWidths+(global.reservesNumber+global.populationNumber)*10+30;
}
