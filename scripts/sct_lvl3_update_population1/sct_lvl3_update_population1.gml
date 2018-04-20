evaporationrate=-0.3;
retentionrateP2=0.0045;
feedingrateP2=0.15;
maxretentionrateP2=0.16;
retentionrateP3=0.00028;
feedingrateP3=0.015;
maxretentionrateP3=0.16;
rainfall=50;
rainfallodds=50;

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		if (population1[i,j]>-1){
			diff=global.population1[i,j]*(evaporationrate+min(retentionrateP2*global.population2[i,j],maxretentionrateP2)+min(retentionrateP3*global.population3[i,j],maxretentionrateP3))-feedingrateP2*global.population2[i,j]-feedingrateP3*global.population3[i,j];
			if random(rainfallodds)<1{
				diff=diff+rainfall;
			}
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

