global.gridPointSize=sprite_get_width(spr_gridpoint1);

global.gridWidth=room_width/global.gridPointSize;
global.gridHeight=room_height/global.gridPointSize;

script_execute(sct_lvl1_background_setup);

instance_create_depth(0,0,1,obj_lvl1_background);



instance_create_depth(0,0,-1,obj_tutorial);
