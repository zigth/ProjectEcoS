/*******************************************************************************
 * Copyright (c) 2018 University of Luxembourg.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v2.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v20.html
 * 
 * Contributors:
 *     Thierry Zigrand - initial code and implementation
 *
 ******************************************************************************/

dispersionrate=0.02;
growthrate=-0.03;
wateringrateP1=0.0002;
maxwateringrateP1=0.05;

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		if (global.population3[i,j]>0){
			movers=global.population3[i,j]*dispersionrate;
				
			destinations=9;
			
			for (m=max(i-1,0);m<min(i+2,global.gridWidth);m++){
				for (n=max(j-1,0);n<min(j+2,global.gridHeight);n++){
					if(population3[m,n]>-1){
						arrivals=max(movers/destinations*(growthrate+min(global.population1[m,n]*wateringrateP1,maxwateringrateP1)),0);
						arrivals=arrivals*(1-global.population3[m,n]/carryingcapacity);
						
						population3[m,n]=population3[m,n]+ceil(arrivals);
					}
				}
			}
			
			
		}	
		
	}	
}

