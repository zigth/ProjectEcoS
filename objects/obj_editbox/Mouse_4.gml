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

for(i=0;i<global.populationNumber;i++){
	currentTextboxIds[i].selected=false;
	if((abs(currentTextboxIds[i].x-mouse_x)<=sprite_get_width(spr_textbox)/2)and(abs(currentTextboxIds[i].y-mouse_y)<=sprite_get_height(spr_textbox)/2)){
		if currentTextboxIds[i].clickable{
			currentTextboxIds[i].selected=true;
			keyboard_string="";
		}
	}
}