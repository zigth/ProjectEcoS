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

//script_execute(sct_Editbox_Selfupdate);


if (keyboard_check(vk_up) and presscheck){
	selectedTextbox=0;
	for(i=0;i<global.populationNumber;i++){
		if (currentTextboxIds[i].selected){
			selectedTextbox=i;
		}
	}
	for(i=selectedTextbox-1;i>-1;i--){
		if(currentTextboxIds[i].clickable){
			currentTextboxIds[i].selected=true;
			currentTextboxIds[selectedTextbox].selected=false;
			break;
		}
	}
	presscheck=false;
	alarm[0]=5;
}

if (keyboard_check(vk_down) and presscheck){
	selectedTextbox=0;
	for(i=0;i<global.populationNumber;i++){
		if (currentTextboxIds[i].selected){
			selectedTextbox=i;
		}
	}
	for(i=selectedTextbox+1;i<global.populationNumber;i++){
		if(currentTextboxIds[i].clickable){
			currentTextboxIds[i].selected=true;
			currentTextboxIds[selectedTextbox].selected=false;
			break;
		}
	}
	presscheck=false;
	alarm[0]=5;
	
}