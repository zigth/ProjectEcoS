//instance_create_depth(0,0,1,obj_lvl1_background);

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		layer_instances=layer_create(0);
		global.gridpointids[i,j]=instance_create_layer(global.gridPointSize*i,global.gridPointSize*j,layer_instances,obj_lvl3_gridpoint);
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
for (i=0;i<7;i++){
	for(j=0;j<9;j++){
		tilemap_set(global.layerSand,global.tileEmpty,i,j);
	}
}

/*global.layerSand=layer_tilemap_get_id("tiles_sand");

global.tileSand=tilemap_get(global.layerSand,2,1);

global.tileSandCUL=tilemap_get(global.layerSand,0,3);
global.tileSandCUR=tilemap_get(global.layerSand,1,3);
global.tileSandCDL=tilemap_get(global.layerSand,0,4);
global.tileSandCDR=tilemap_get(global.layerSand,1,4);

global.tileSandSL=tilemap_get(global.layerSand,1,1);
global.tileSandSR=tilemap_get(global.layerSand,3,1);
global.tileSandSU=tilemap_get(global.layerSand,2,0);
global.tileSandSD=tilemap_get(global.layerSand,2,2);

global.tileSandCCL=tilemap_get(global.layerSand,1,0);
global.tileSandCCR=tilemap_get(global.layerSand,1,2);
global.tileSandCCU=tilemap_get(global.layerSand,3,0);
global.tileSandCCD=tilemap_get(global.layerSand,3,2);

global.tileSandSSH=tilemap_get(global.layerSand,0,2);
global.tileSandSSV=tilemap_get(global.layerSand,0,1);

global.tileSandCCCUL=tilemap_get(global.layerSand,2,3);
global.tileSandCCCUR=tilemap_get(global.layerSand,3,3);
global.tileSandCCCDL=tilemap_get(global.layerSand,2,4);
global.tileSandCCCDR=tilemap_get(global.layerSand,3,4);

global.tileSandCCCC=tilemap_get(global.layerSand,4,0);

global.tileEmpty=tilemap_get(global.layerSand,0,0);
for (i=0;i<5;i++){
	for(j=0;j<5;j++){
		tilemap_set(global.layerSand,global.tileEmpty,i,j);
	}
}*/





