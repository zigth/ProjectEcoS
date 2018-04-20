switch(i){
	case 0:
		bar=spr_bar_red;
		ratio=global.population1[gridvaluex,gridvaluey]/global.population1LocalThreshold;
		break;
	case 1:
		bar=spr_bar_blue;
		ratio=global.population2[gridvaluex,gridvaluey]/global.population2LocalThreshold;
		break;
	default:
		show_message("There is an error");
}