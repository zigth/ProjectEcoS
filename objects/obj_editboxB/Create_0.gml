/// @description Insert description here
// You can write your code in this editor
gridvaluex=-1;
gridvaluey=-1;

currentBars[global.reservesNumber+global.populationNumber-1]=0;


stringWidths=0;
stringMaxHeight=0; //comment out opt
for(i=0;i<global.reservesNumber;i++){
	stringWidths+=max(string_width(global.reservesNames[i]),sprite_get_width(spr_plusbutton)*2+10); //get rid of max() opt
	if (string_height(global.reservesNames[i])>stringMaxHeight){ //comment out opt
		stringMaxHeight=string_height(global.reservesNames[i]);
	}
}
stringWidthsReserves=stringWidths;
for(i=0;i<global.populationNumber;i++){
	stringWidths+=max(string_width(global.populationNames[i]),sprite_get_width(spr_plusbutton)*2+10); //get rid of max() opt
	if (string_height(global.populationNames[i])>stringMaxHeight){ //comment out opt
		stringMaxHeight=string_height(global.populationNames[i]);
	}
}

textHeight=stringMaxHeight; //sprite_get_height(spr_plusbutton)+sprite_get_height(spr_minusbutton)+2;
selfWidth=stringWidths+(global.reservesNumber+global.populationNumber)*(10/*20+sprite_get_width(spr_plusbutton)*/)+30;//+sprite_get_width(spr_closebutton)+30;
selfHeight=sprite_get_height(spr_editboxB_bars)+20+textHeight+sprite_get_height(spr_plusbutton); //+20+textHeight;

currentClosebutton = instance_create_depth(x+selfWidth-sprite_get_width(spr_closebutton)-10,y+10,-2,obj_closebutton);
//gridupdated=false;
//presscheck=true;

stringWidths=stringWidthsReserves;
for (i=0;i<global.populationNumber;i++){
	/*stringWidths+=string_width(global.populationNames[i]);
	newPlusButton=instance_create_depth(x+stringWidths+i*(20+sprite_get_width(spr_plusbutton))+22,y+selfHeight-5-textHeight,-2,obj_plusbutton);
	newPlusButton.population=i+1;
	newMinusButton=instance_create_depth(x+stringWidths+i*(20+sprite_get_width(spr_plusbutton))+22,y+selfHeight-5-sprite_get_height(spr_minusbutton),-2,obj_minusbutton);
	newMinusButton.population=i+1;*/
	newPlusButton=instance_create_depth(x+stringWidths+(i+global.reservesNumber)*10+max(string_width(global.populationNames[i])/2,sprite_get_width(spr_plusbutton)+5)+15-sprite_get_width(spr_plusbutton),y+selfHeight-5-sprite_get_height(spr_plusbutton),-2,obj_plusbutton);
	newPlusButton.population=i+1;
	newMinusButton=instance_create_depth(x+stringWidths+(i+global.reservesNumber)*10+max(string_width(global.populationNames[i])/2,sprite_get_width(spr_plusbutton)+5)+25,y+selfHeight-5-sprite_get_height(spr_minusbutton),-2,obj_minusbutton);
	newMinusButton.population=i+1;
	stringWidths+=max(string_width(global.populationNames[i]),sprite_get_width(spr_plusbutton)*2+10); //get rid fo max() opt
	script_execute(sctButtonSetup);
}

pluscheck=false;
pluscounter=0;
minuscheck=false;
minuscounter=0;
population=0;

//script_execute(sct_lvl1_editbox_create);


