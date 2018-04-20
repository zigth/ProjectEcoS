growthrate=-0.03;
encounterrateP3=0.0003;
encounterrateP2=-0.002;

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		if (population1[i,j]>-1){
			diff=global.population1[i,j]*(growthrate+min(encounterrateP3*global.population3[i,j],0.1)+encounterrateP2*global.population2[i,j]);
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

