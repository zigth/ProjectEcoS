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
 
dispersionrate=0.2;

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		if (global.population1[i,j]>0){
			movers=global.population1[i,j]*dispersionrate;
			
			destinations=9;
			if ((i==0)or(i==global.gridWidth-1))or((j==0)or(j==global.gridHeight-1)){
				destinations=6;
				movers=(6/9*movers);
			}
			if ((i==0)or(i==global.gridWidth-1))and((j==0)or(j==global.gridHeight-1)){
				destinations=4;
				movers=(4/9*movers);
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
			
			population1[i,j]=population1[i,j]-floor(movers);
			
		}
	}	
}

