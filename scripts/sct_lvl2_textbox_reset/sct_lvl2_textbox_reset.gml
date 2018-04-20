switch (population) {
		case 1:
			text=string(global.population1[gridvaluex,gridvaluey]);
			break;
		case 2:
			text=string(global.population2[gridvaluex,gridvaluey]);
			break;
		case 3:
			text=string(global.population3[gridvaluex,gridvaluey]);
			break;
		default:
			text="error no connected value";
}