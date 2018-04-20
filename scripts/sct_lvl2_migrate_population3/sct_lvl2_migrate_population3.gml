dispersionrate=0.02

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		if (global.population3[i,j]>0){
			movers=global.population3[i,j]*dispersionrate;
				
			destinations=9;
			
			for (m=max(i-1,0);m<min(i+2,global.gridWidth);m++){
				for (n=max(j-1,0);n<min(j+2,global.gridHeight);n++){
					if(population3[m,n]>-1){
						population3[m,n]=population3[m,n]+ceil(movers/destinations);
					}
				}
			}
			
			
		}	
		
	}	
}