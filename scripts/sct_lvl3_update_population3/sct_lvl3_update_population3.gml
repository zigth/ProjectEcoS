growthrate=-0.04;
wateringrateP1=0.0001;
maxwateringrateP1=0.05;
feedingrateP4=-0.005;//-0.005
fertilizationrateP4=0.001;
maxfertilizationrateP4=0.5;
supportrateP2=0.01;
maxsupportrateP2=0.5;
carryingcapacity=3000;

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		if (population3[i,j]>-1){
			diff=global.population3[i,j]*(growthrate+min(wateringrateP1*global.population1[i,j],maxwateringrateP1))+feedingrateP4*max(global.population4[i,j],0);
			
			if(diff>0){
				diff=diff*(1+min(fertilizationrateP4*global.population4[i,j],maxfertilizationrateP4)+min(supportrateP2*global.population2[i,j],maxsupportrateP2));
				diff=diff*(1-global.population3[i,j]/carryingcapacity);
				diff=ceil(diff);
			}
			if(diff<0){
				diff=floor(diff);
			}
			population3[i,j]=max(global.population3[i,j]+diff,0);
		}
	}	
}

