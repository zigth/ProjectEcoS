
if pluscheck {
	switch (population) {
			case 1:
				if(global.population1[gridvaluex,gridvaluey]>-1 and 100*power(2,pluscounter)<=global.population1Reserve){
					if(global.population1[gridvaluex,gridvaluey]+100*power(2,pluscounter)<global.population1LocalThreshold){
						global.totalPopulation1+=100*power(2,pluscounter);
						global.population1Reserve-=10000*power(2,pluscounter);
						global.population1[gridvaluex,gridvaluey]+=100*power(2,pluscounter);
					}else{
						global.totalPopulation1+=global.population1LocalThreshold-global.population1[gridvaluex,gridvaluey];
						global.population1[gridvaluex,gridvaluey]=global.population1LocalThreshold;
					}
				}
				break;
			case 2:
				if(global.population2[gridvaluex,gridvaluey]>-1){
					if(global.population2[gridvaluex,gridvaluey]+100*power(2,pluscounter)<global.population2LocalThreshold){
						global.totalPopulation2+=100*power(2,pluscounter);
						global.population2[gridvaluex,gridvaluey]+=100*power(2,pluscounter);
					}else{
						global.totalPopulation2+=global.population2LocalThreshold-global.population2[gridvaluex,gridvaluey];
						global.population2[gridvaluex,gridvaluey]=global.population2LocalThreshold;
					}
				}
				break;
			case 3:
				if(global.population3[gridvaluex,gridvaluey]>-1){
					if(global.population3[gridvaluex,gridvaluey]+100*power(2,pluscounter)<global.population3LocalThreshold){
						global.totalPopulation3+=100*power(2,pluscounter);
						global.population3[gridvaluex,gridvaluey]+=100*power(2,pluscounter);
					}else{
						global.totalPopulation3+=global.population3LocalThreshold-global.population3[gridvaluex,gridvaluey];
						global.population3[gridvaluex,gridvaluey]=global.population3LocalThreshold;
					}
				}
				break;	
			case 4:
				if(global.population4[gridvaluex,gridvaluey]>-1){
					if(global.population4[gridvaluex,gridvaluey]+100*power(2,pluscounter)<global.population4LocalThreshold){
						global.totalPopulation4+=100*power(2,pluscounter);
						global.population4[gridvaluex,gridvaluey]+=100*power(2,pluscounter);
					}else{
						global.totalPopulation4+=global.population4LocalThreshold-global.population4[gridvaluex,gridvaluey];
						global.population4[gridvaluex,gridvaluey]=global.population4LocalThreshold;
					}
				}
				break;		
			default:
				show_message("There's an error in the editboxB plus function");
		}
	pluscounter+=1;
	minuscounter=0;
	pluscheck=false;
}

if minuscheck {
	switch (population) {
			case 1:
				if(global.population1[gridvaluex,gridvaluey]>-1){
					if(global.population1[gridvaluex,gridvaluey]-100*power(2,minuscounter)>0){
						global.totalPopulation1-=100*power(2,pluscounter);
						global.population1[gridvaluex,gridvaluey]-=100*power(2,minuscounter);
					}else{
						global.totalPopulation1-=global.population1[gridvaluex,gridvaluey];
						global.population1[gridvaluex,gridvaluey]=0;
					}
				}
				break;
			case 2:
				if(global.population2[gridvaluex,gridvaluey]>-1){
					if(global.population2[gridvaluex,gridvaluey]-100*power(2,minuscounter)>0){
						global.totalPopulation2-=100*power(2,pluscounter);
						global.population2[gridvaluex,gridvaluey]-=100*power(2,minuscounter);
					}else{
						global.totalPopulation2-=global.population2[gridvaluex,gridvaluey];
						global.population2[gridvaluex,gridvaluey]=0;
					}
				}
				break;
			case 3:
				if(global.population3[gridvaluex,gridvaluey]>-1){
					if(global.population3[gridvaluex,gridvaluey]-100*power(2,minuscounter)>0){
						global.totalPopulation3-=100*power(2,pluscounter);
						global.population3[gridvaluex,gridvaluey]-=100*power(2,minuscounter);
					}else{
						global.totalPopulation3-=global.population3[gridvaluex,gridvaluey];
						global.population3[gridvaluex,gridvaluey]=0;
					}
				}
				break;	
			case 4:
				if(global.population4[gridvaluex,gridvaluey]>-1){
					if(global.population4[gridvaluex,gridvaluey]-100*power(2,minuscounter)>0){
						global.totalPopulation4-=100*power(2,pluscounter);
						global.population4[gridvaluex,gridvaluey]-=100*power(2,minuscounter);
					}else{
						global.totalPopulation4-=global.population4[gridvaluex,gridvaluey];
						global.population4[gridvaluex,gridvaluey]=0;
					}
				}
				break;		
			default:
				show_message("There's an error in the editboxB minus function");
		}
	minuscounter+=1;
	pluscounter=0;
	minuscheck=false;
}
