if(!gridupdated and (gridvaluex!=-1 or gridvaluey!=-1)){
	for(i=0;i<global.populationNumber;i++){
		currentTextboxIds[i].gridvaluex=gridvaluex;
		currentTextboxIds[i].gridvaluey=gridvaluey;
		currentTextboxIds[i].text=""; 
		switch (currentTextboxIds[i].population) {
			case 1:
				if (global.population1[gridvaluex,gridvaluey]>-1){
					currentTextboxIds[i].text=string(global.population1[gridvaluex,gridvaluey]);
				}else{
					currentTextboxIds[i].text="no presence";
				}
				break;
			case 2:
				if (global.population2[gridvaluex,gridvaluey]>-1){
					currentTextboxIds[i].text=string(global.population2[gridvaluex,gridvaluey]);
				}else{
					currentTextboxIds[i].text="no presence";
				}
				break;
			case 3:
				if (global.population3[gridvaluex,gridvaluey]>-1){
					currentTextboxIds[i].text=string(global.population3[gridvaluex,gridvaluey]);
				}else{
					currentTextboxIds[i].text="no presence";
				}
				break;
			default:
				currentTextboxIds[i].text="error no connected value";
		}
	
	}
	
	if (global.population1[gridvaluex,gridvaluey]<0){
		currentTextboxIds[0].clickable=false;
	}
	if (global.population2[gridvaluex,gridvaluey]<0){
		currentTextboxIds[1].clickable=false;
	}
	if (global.population3[gridvaluex,gridvaluey]<0){
		currentTextboxIds[2].clickable=false;
	}
	
	for(i=0;i<global.populationNumber;i++){
	if(currentTextboxIds[i].clickable){
		currentTextboxIds[i].selected=true;
		break;
	}
}
	
	gridupdated=true;
}


