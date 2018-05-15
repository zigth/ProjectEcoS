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

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		layer_instances=layer_create(0);
		instance_create_layer(global.gridPointSize*i,global.gridPointSize*j,layer_instances,obj_lvl3_gridpoint);
	}	
}

global.layerSand=layer_tilemap_get_id("tiles_sand");

global.tileSandUL=tilemap_get(global.layerSand,4,2);
global.tileSandUR=tilemap_get(global.layerSand,5,2);
global.tileSandDL=tilemap_get(global.layerSand,4,3);
global.tileSandDR=tilemap_get(global.layerSand,5,3);

global.tileSandCUL=tilemap_get(global.layerSand,4,6);
global.tileSandCUR=tilemap_get(global.layerSand,7,6);
global.tileSandCDL=tilemap_get(global.layerSand,4,9);
global.tileSandCDR=tilemap_get(global.layerSand,7,9);

global.tileSandSLU=tilemap_get(global.layerSand,2,2);
global.tileSandSLD=tilemap_get(global.layerSand,2,3);
global.tileSandSUL=tilemap_get(global.layerSand,4,0);
global.tileSandSUR=tilemap_get(global.layerSand,5,0);
global.tileSandSRU=tilemap_get(global.layerSand,7,2);
global.tileSandSRD=tilemap_get(global.layerSand,7,3);
global.tileSandSDL=tilemap_get(global.layerSand,4,5);
global.tileSandSDR=tilemap_get(global.layerSand,5,5);

global.tileSandSSUL=tilemap_get(global.layerSand,0,6);
global.tileSandSSUR=tilemap_get(global.layerSand,3,6);
global.tileSandSSDL=tilemap_get(global.layerSand,0,9);
global.tileSandSSDR=tilemap_get(global.layerSand,3,9);


global.tileEmpty=tilemap_get(global.layerSand,0,0);
for (i=0;i<8;i++){
	for(j=0;j<10;j++){
		tilemap_set(global.layerSand,global.tileEmpty,i,j);
	}
}


instance_create_depth((room_width-sprite_get_width(spr_message))/2,100,-1,obj_lvl3_intro);




