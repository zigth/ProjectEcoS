if(string_digits(text)==text){
	switch (population) {
			case 1:
				if(global.population1[gridvaluex,gridvaluey]>-1){
					
					if(real(text)<global.population1Threshold){
						global.totalPopulation1+=floor(real(text))-global.population1[gridvaluex,gridvaluey];
						global.population1[gridvaluex,gridvaluey]=floor(real(text));
						text=string(global.population1[gridvaluex,gridvaluey]);
					}else{
						text="Invalid input";
						alarm[2]=20;
					}
					
				}
				break;
			case 2:
				if(global.population2[gridvaluex,gridvaluey]>-1){
					
					if(real(text)<global.population2Threshold and (real(text)>=global.population2[gridvaluex,gridvaluey])){ //the second condition is a problem particular restriction
						global.totalPopulation2+=floor(real(text))-global.population2[gridvaluex,gridvaluey];
						global.population2[gridvaluex,gridvaluey]=floor(real(text));
						text=string(global.population2[gridvaluex,gridvaluey]);
					}else{
						text="Invalid input";
						alarm[2]=20;
					}
					
				}
				break;
			default:
				text="error no connected value";
		}
}else{
	
	text="Invalid input";
	alarm[2]=20;
	
}