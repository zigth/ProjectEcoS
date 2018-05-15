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

updated=false;

if global.totalPopulation1>global.population1Maximum{
	global.population1Maximum=global.totalPopulation1;
	updated=true;
}
if global.totalPopulation1<global.population1Minimum{
	global.population1Minimum=global.totalPopulation1;
	updated=true;
}

if global.totalPopulation2>global.population2Maximum{
	global.population2Maximum=global.totalPopulation2;
	updated=true;
}
if global.totalPopulation2<global.population2Minimum{
	global.population2Minimum=global.totalPopulation2;
	updated=true;
}

if updated {
	global.lastWinCheckUpdate=global.timeElapsed;
}

if ((global.timeElapsed-global.lastWinCheckUpdate)>global.winCounter){
	instance_create_depth((room_width-sprite_get_width(spr_message))/2,100,-1,obj_lvl1_win);
	global.timeflow=false;
}
