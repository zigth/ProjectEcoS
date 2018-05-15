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
