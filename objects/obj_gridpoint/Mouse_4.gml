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

//script_execute(sct_gridpoint_validityTest);

timebutton=instance_find(obj_timebutton,0);
if((abs(timebutton.x-mouse_x)<=sprite_get_width(spr_playbutton)/2)and(abs(timebutton.y-mouse_y)<=sprite_get_height(spr_playbutton)/2)){
	timebuttonSelected=true;
}else{
	timebuttonSelected=false;
}

editboxSelected=false;

if(instance_exists(obj_editbox)){
	editBox=instance_find(obj_editbox,0);
	if((abs(mouse_x-editBox.x-sprite_get_width(spr_editbox)/2)<=sprite_get_width(spr_editbox)/2) and (abs(mouse_y-editBox.y-editBox.selfHeight/2)<=editBox.selfHeight/2)){
		editboxSelected=true;
	}else{
		editboxSelected=false;
	}
}

editboxBSelected=false;

if(instance_exists(obj_editboxB)){
	editBoxB=instance_find(obj_editboxB,0);
	if((abs(mouse_x-editBoxB.x-editBoxB.selfWidth/2)<=editBoxB.selfWidth/2) and (abs(mouse_y-editBoxB.y-editBoxB.selfHeight/2)<=editBoxB.selfHeight/2)){
		editboxBSelected=true;
	}else{
		editboxBSelected=false;
	}
}

messageExists=false;

if(instance_exists(obj_message)){
	messageExists=true;
}


if (!timebuttonSelected and !editboxSelected and !editboxBSelected and !messageExists and validity){
	instance_destroy(obj_editbox);
	instance_destroy(obj_editboxB);
	if ((x/room_width)<(1/2)){
		currentEditbox = instance_create_depth(room_width-usedEditboxWidth-10,10,-1,usedEditbox);
	}else{
		currentEditbox = instance_create_depth(10,10,-1,usedEditbox);
	}
	currentEditbox.gridvaluex=gridvaluex;
	currentEditbox.gridvaluey=gridvaluey;
}


