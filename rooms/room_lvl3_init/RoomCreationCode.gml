



global.gridPointSize=sprite_get_width(spr_gridpoint1);

global.gridWidth=room_width/global.gridPointSize;
global.gridHeight=room_height/global.gridPointSize;

global.gridpointids[global.gridWidth-1,global.gridHeight-1]=0;

global.timeflow=false;
global.timeflowrate=20;

global.timeElapsed=0;
global.lastWinCheckUpdate=0;
global.winCounter=300;



script_execute(sct_lvl3_populations_setup);
//script_execute(sct_lvl3_background_setup);
global.checktext="";
global.checktext2="";
global.checktext3="";
global.checktext4="";
global.tempvar=0;
global.tempvar2=0;
global.tempvar3=0;
global.tempvar4=0;

room_goto(room_lvl3);
