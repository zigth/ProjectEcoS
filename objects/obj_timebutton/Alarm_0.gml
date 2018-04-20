/// @description Insert description here
// You can write your code in this editor
if global.timeflow{
	script_execute(sctUpdatepopulation);
	alarm[0]=global.timeflowrate;
	if (global.timeflowrate>1){
		global.timeflowrate--;
	}
}