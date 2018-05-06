
//instance_create_depth(0,0,1,obj_lvl2_background);

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		layer_instances=layer_create(0);
		//global.gridpointids[i,j]=instance_create_layer(global.gridPointSize*i,global.gridPointSize*j,layer_instances,obj_lvl2_gridpoint);
		instance_create_layer(global.gridPointSize*i,global.gridPointSize*j,layer_instances,obj_lvl2_gridpoint);
	}	
}

/*//trylayer=layer_tilemap_create(layer_create(1,"triedlayer"),0,0,tileset_lvl2_island,12,9);
trylayer=layer_tilemap_get_id("tiles_island");
data=spr_tile_water //tilemap_get(trylayer,9,10);
tilemap_set(trylayer,data,15,15);
//draw_tilemap(trylayer,0,0);*/



instance_create_depth((room_width-sprite_get_width(spr_message))/2,100,-1,obj_lvl2_intro);


