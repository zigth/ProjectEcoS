switch(i+1){
	case 1:
		bar=spr_bar_blue;
		ratio=global.population1[gridvaluex,gridvaluey]/global.population1LocalThreshold;
		break;
	case 2:
		bar=spr_bar_green;
		ratio=global.population2[gridvaluex,gridvaluey]/global.population2LocalThreshold;
		break;
	case 3:
		bar=spr_bar_dgreen;
		ratio=global.population3[gridvaluex,gridvaluey]/global.population3LocalThreshold;
		break;	
	case 4:
		bar=spr_bar_red;
		ratio=global.population4[gridvaluex,gridvaluey]/global.population4LocalThreshold;
		break;		
	default:
		show_message("There is an error in the editboxB draw function");
}