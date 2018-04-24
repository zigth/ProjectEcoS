loss = false;


if (global.totalPopulation1>global.population1Threshold){
	loss=true;
}		

if (global.totalPopulation1<=0){
	loss=true;
}

if (global.totalPopulation2>global.population2Threshold){
	loss=true;
}

if (global.totalPopulation2<=0){
	loss=true;
}

if (global.totalPopulation3>global.population3Threshold){
	loss=true;
}

if (global.totalPopulation3<=0){
	loss=true;
}

if (global.totalPopulation4>global.population4Threshold){
	loss=true;
}

if (global.totalPopulation4<=0){
	loss=true;
}


/*if (global.population1Reserve<1){
	loss=true;
}*/


if loss {
	//show_message("Game over \nThe ecosystem is irreparably damaged.");
	//room_goto(room_lvl3_init);
	instance_create_depth((room_width-sprite_get_width(spr_message))/2,100,-1,obj_lvl3_loss);
	global.timeflow=false;
}