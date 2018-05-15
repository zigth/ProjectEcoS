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

positionsPopulation1[sprite_get_width(spr_monitor)-1]=0;
positionsPopulation2[sprite_get_width(spr_monitor)-1]=0;
positionsPopulation3[sprite_get_width(spr_monitor)-1]=0;


for (i=0;i<sprite_get_width(spr_monitor);i++){
	positionsPopulation1[i]=floor((log2(global.totalPopulation1+1)/log2(global.population1Threshold+1))*sprite_get_height(spr_monitor));
	positionsPopulation2[i]=floor((log2(global.totalPopulation2+1)/log2(global.population2Threshold+1))*sprite_get_height(spr_monitor));
	positionsPopulation3[i]=floor((log2(global.totalPopulation3+1)/log2(global.population3Threshold+1))*sprite_get_height(spr_monitor));
}