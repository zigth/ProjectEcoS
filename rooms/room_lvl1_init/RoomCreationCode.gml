



global.gridPointSize=sprite_get_width(spr_gridpoint1);

global.gridWidth=room_width/global.gridPointSize;
global.gridHeight=room_height/global.gridPointSize;

global.gridpointids[global.gridWidth-1,global.gridHeight-1]=0;

global.timeflow=false;
global.timeflowrate=20;

global.timeElapsed=0;
global.lastWinCheckUpdate=0;
global.winCounter=300;



script_execute(sct_lvl1_populations_setup);
script_execute(sct_lvl1_background_setup);

global.editboxChoice=false;

room_goto(room_lvl1);
