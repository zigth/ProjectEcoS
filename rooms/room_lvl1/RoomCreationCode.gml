instance_create_depth(0,0,1,obj_lvl1_background);

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		layer_instances=layer_create(0);
		global.gridpointids[i,j]=instance_create_layer(global.gridPointSize*i,global.gridPointSize*j,layer_instances,obj_lvl1_gridpoint);
	}	
}

instance_create_depth((room_width-sprite_get_width(spr_message))/2,100,-1,obj_lvl1_intro);