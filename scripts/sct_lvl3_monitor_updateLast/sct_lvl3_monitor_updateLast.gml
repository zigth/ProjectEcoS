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

positionsPopulation1[sprite_get_width(spr_monitor)-1]=floor(log2(global.totalPopulation1)/log2(global.population1Threshold)*sprite_get_height(spr_monitor));
positionsPopulation2[sprite_get_width(spr_monitor)-1]=floor(log2(global.totalPopulation2)/log2(global.population2Threshold)*sprite_get_height(spr_monitor));
positionsPopulation3[sprite_get_width(spr_monitor)-1]=floor(log2(global.totalPopulation3)/log2(global.population3Threshold)*sprite_get_height(spr_monitor));
positionsPopulation4[sprite_get_width(spr_monitor)-1]=floor(log2(global.totalPopulation4)/log2(global.population4Threshold)*sprite_get_height(spr_monitor));

