switch(i+1){
	case 1:
		bar=spr_bar_red;
		ratio=global.population1[gridvaluex,gridvaluey]/global.population1LocalThreshold;
		break;
	case 2:
		bar=spr_bar_blue;
		ratio=global.population2[gridvaluex,gridvaluey]/global.population2LocalThreshold;
		break;
	case 3:
		bar=spr_bar_green;
		ratio=global.population3[gridvaluex,gridvaluey]/global.population3LocalThreshold;
		break;	
	default:
		show_message("There is an error in the editboxB draw function");
}