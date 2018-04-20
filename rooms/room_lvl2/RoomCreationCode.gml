
//instance_create_depth(0,0,1,obj_lvl2_background);

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		layer_instances=layer_create(0);
		global.gridpointids[i,j]=instance_create_layer(global.gridPointSize*i,global.gridPointSize*j,layer_instances,obj_lvl2_gridpoint);
	}	
}

//layer_tilemap_create(layer_get_id("Tiles_1"),0,0,tileset_lvl2,64,64);

instance_create_depth((room_width-sprite_get_width(spr_message))/2,100,-1,obj_lvl2_intro);


