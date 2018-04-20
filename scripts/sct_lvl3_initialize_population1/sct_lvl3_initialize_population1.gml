
for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		global.population1[i,j]=0;
	}	
}

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		if i+j<20 {
			global.population1[i,j]=500;
		}	
	}	
}

