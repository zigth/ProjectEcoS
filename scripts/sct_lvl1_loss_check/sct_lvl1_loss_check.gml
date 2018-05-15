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

loss = false;

if (global.totalPopulation1>global.population1Threshold){
	loss=true;
}		

if (global.totalPopulation1<=0){
	loss=true;
}

if (global.totalPopulation2>global.population2Threshold){
	loss=true;
}


if loss {
	instance_create_depth((room_width-sprite_get_width(spr_message))/2,100,-1,obj_lvl1_loss);
	global.timeflow=false;
}