
if global.editboxChoice{
	usedEditbox=obj_lvl1_editbox;
	usedEditboxWidth=sprite_get_width(spr_editbox);
}else{
	usedEditbox=obj_lvl1_editboxB;
	stringWidths=0;
	for(i=0;i<global.populationNumber;i++){
		stringWidths+=max(string_width(global.populationNames[i]),sprite_get_width(spr_plusbutton)*2+10); //get rid of max() opt
	}
	usedEditboxWidth=stringWidths+global.populationNumber*(10/*20+sprite_get_width(spr_plusbutton)*/)+30; //+sprite_get_width(spr_closebutton)+30;
}
