/// @description Insert description here
// You can write your code in this editor
if global.timeflow and clickcheck{
	global.timeflow=false;
	script_execute(sctWincheckReset);
	
	clickcheck=false;
	alarm[1]=1;
	global.timeflowrate=20;
}