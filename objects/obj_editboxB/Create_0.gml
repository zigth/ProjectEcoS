/*******************************************************************************
 * Copyright (c) 2018 University of Luxembourg.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v2.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v20.html
 * 
 * Contributors:
 *     Thierry Zigrand - initial code and implementation
 *
 ******************************************************************************/
 
gridvaluex=-1;
gridvaluey=-1;

currentBars[global.reservesNumber+global.populationNumber-1]=0;


stringWidths=0;
stringMaxHeight=0; 
for(i=0;i<global.reservesNumber;i++){
	stringWidths+=max(string_width(global.reservesNames[i]),sprite_get_width(spr_plusbutton)*2+10); //get rid of max() opt
	if (string_height(global.reservesNames[i])>stringMaxHeight){ 
		stringMaxHeight=string_height(global.reservesNames[i]);
	}
}
stringWidthsReserves=stringWidths;
for(i=0;i<global.populationNumber;i++){
	stringWidths+=max(string_width(global.populationNames[i]),sprite_get_width(spr_plusbutton)*2+10); //get rid of max() opt
	if (string_height(global.populationNames[i])>stringMaxHeight){
		stringMaxHeight=string_height(global.populationNames[i]);
	}
}

textHeight=stringMaxHeight; 
selfWidth=stringWidths+(global.reservesNumber+global.populationNumber)*(10)+30;
selfHeight=sprite_get_height(spr_editboxB_bars)+20+textHeight+sprite_get_height(spr_plusbutton);

currentClosebutton = instance_create_depth(x+selfWidth-sprite_get_width(spr_closebutton)-10,y+10,-2,obj_closebutton);


stringWidths=stringWidthsReserves;
for (i=0;i<global.populationNumber;i++){
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


