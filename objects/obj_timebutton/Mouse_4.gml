/// @description Insert description here
// You can write your code in this editor
if ((!global.timeflow) and clickcheck){// and (!instance_exists(obj_editbox))){
	instance_destroy(obj_editbox);
	instance_destroy(obj_editboxB);
	global.timeflow=true;
	alarm[0]=global.timeflowrate;
	clickcheck=false;
	alarm[1]=1;
}