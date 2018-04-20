growthrate=0.08;
encounterrate=-0.002;

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		if (population1[i,j]>-1){
			diff=growthrate*global.population1[i,j]+encounterrate*global.population1[i,j]*global.population2[i,j];
			if(diff>0){
				diff=ceil(diff);
			}
			if(diff<0){
				diff=floor(diff);
			}
			population1[i,j]=max(global.population1[i,j]+diff,0);
		}
	}	
}

