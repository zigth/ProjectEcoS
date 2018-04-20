growthrate=-0.02;
encounterrate=0.00005;

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		if (population2[i,j]>-1){
			diff=growthrate*global.population2[i,j]+encounterrate*global.population2[i,j]*global.population1[i,j];
			if(diff>0){
				diff=ceil(diff);
			}
			if(diff<0){
				diff=floor(diff);
			}
			population2[i,j]=max(global.population2[i,j]+diff,0);
		}
	}	
}