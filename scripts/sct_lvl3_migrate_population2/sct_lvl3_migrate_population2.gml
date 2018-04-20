dispersionrate=0.015;
growthrate=-0.02;
wateringrateP1=0.00005;
maxwateringrateP1=0.03;

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		if (global.population2[i,j]>0){
			movers=global.population2[i,j]*dispersionrate;
				
			destinations=9;
			
			for (m=max(i-1,0);m<min(i+2,global.gridWidth);m++){
				for (n=max(j-1,0);n<min(j+2,global.gridHeight);n++){
					if(population2[m,n]>-1){
						//global.population2seeds[m,n]=global.population2seeds[m,n]+movers/destinations;
						arrivals=max(movers/destinations*(growthrate+min(global.population1[m,n]*wateringrateP1,maxwateringrateP1)),0);
						population2[m,n]=population2[m,n]+ceil(arrivals);
					}
				}
			}
			
			
		}	
		
	}	
}