migrationrate=0.1;
migrationthresholdP2=40;
migrationthresholdP3=200;

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		if (global.population4[i,j]>0){	
			movers=ceil(global.population4[i,j]*max(1/2*max(1-global.population2[i,j]/migrationthresholdP2,0)+1/2*max(1-global.population3[i,j]/migrationthresholdP3,0),migrationrate));
			
			destinations=9;
			preferredDestinations=9;
			if ((i==0)or(i==global.gridWidth-1))or((j==0)or(j==global.gridHeight-1)){
				destinations=6;
				preferredDestinations=6;
			}
			if ((i==0)or(i==global.gridWidth-1))and((j==0)or(j==global.gridHeight-1)){
				destinations=4;
				preferredDestinations=4;
			}
			
			for (m=max(i-1,0);m<min(i+2,global.gridWidth);m++){
				for (n=max(j-1,0);n<min(j+2,global.gridHeight);n++){
					if(population4[m,n]<0){
						destinations--;
					}else{
						if (global.population2[m,n]==0 or global.population3[m,n]==0){
							preferredDestinations--;
						}
					}
				}
			
			}
			
			if preferredDestinations>0{
				for (m=max(i-1,0);m<min(i+2,global.gridWidth);m++){
					for (n=max(j-1,0);n<min(j+2,global.gridHeight);n++){
						if(population4[m,n]>-1){
							if (global.population2[m,n]>0 and global.population3[m,n]>0){
								population4[m,n]=population4[m,n]+floor(movers/preferredDestinations);
							}
						}
					}
				}
				population4[i,j]=population4[i,j]-preferredDestinations*floor(movers/preferredDestinations);
			}else{
				for (m=max(i-1,0);m<min(i+2,global.gridWidth);m++){
					for (n=max(j-1,0);n<min(j+2,global.gridHeight);n++){
						if(population4[m,n]>-1){
							population4[m,n]=population4[m,n]+floor(movers/destinations);
						}
					}
				}
				population4[i,j]=population4[i,j]-destinations*floor(movers/destinations);
			}
	
		}
	}	
}

