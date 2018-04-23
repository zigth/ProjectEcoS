growthrate=-0.02;
wateringrateP1=0.00005;
maxwateringrateP1=0.03;
fertilizationrateP4=0.001;
maxfertilizationrateP4=0.5;
carryingcapacity=300;

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		if (population2[i,j]>-1){
			//diff=global.population2[i,j]*growthrate+global.population2seeds[i,j]*min(wateringrateP1*global.population1[i,j],maxwateringrateP1);
			diff=global.population2[i,j]*(growthrate+min(wateringrateP1*global.population1[i,j],maxwateringrateP1));
			
			if(diff>0){
				diff=diff*min(fertilizationrateP4*global.population4[i,j],maxfertilizationrateP4);
				diff=diff*(1-global.population2[i,j]/carryingcapacity);
				diff=ceil(diff);
			}
			if(diff<0){
				diff=floor(diff);
			}
			population2[i,j]=max(global.population2[i,j]+diff,0);
			//global.population2seed[i,j]=0.9*global.population2[i,j];
		}
	}	
}