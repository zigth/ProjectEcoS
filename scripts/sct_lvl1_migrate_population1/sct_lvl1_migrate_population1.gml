migrationthreshold=800;

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		if (global.population1[i,j]>migrationthreshold){
			movers=global.population1[i,j]-migrationthreshold;
			
			destinations=9;
			if ((i==0)or(i==global.gridWidth-1))or((j==0)or(j==global.gridHeight-1)){
				destinations=6;
			}
			if ((i==0)or(i==global.gridWidth-1))and((j==0)or(j==global.gridHeight-1)){
				destinations=4;
			}
			
			for (m=max(i-1,0);m<min(i+2,global.gridWidth);m++){
				for (n=max(j-1,0);n<min(j+2,global.gridHeight);n++){
					if(population1[m,n]<0){
						destinations--;
					}
				}
			}
			
			for (m=max(i-1,0);m<min(i+2,global.gridWidth);m++){
				for (n=max(j-1,0);n<min(j+2,global.gridHeight);n++){
					if(population1[m,n]>-1){
						population1[m,n]=population1[m,n]+floor(movers/destinations);
					}
				}
			}
			
			population1[i,j]=population1[i,j]-movers;
			
		}
	}	
}