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
 
liveablethresholdP2=3;
liveablethresholdP3=10;

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		if global.gridpointIsSand[i,j]{
			if (global.population2[i,j]>liveablethresholdP2 and global.population3[i,j]>liveablethresholdP3){
				global.gridpointIsSand[i,j]=false;
				global.gridpointIsUpdated[i,j]=true;
				for (m=max(i-1,0);m<min(i+2,global.gridWidth);m++){
					for (n=max(j-1,0);n<min(j+2,global.gridHeight);n++){
						global.gridpointIsUpdated[m,n]=true;
					}
				}
			}
		}else{	
			if (global.population2[i,j]<liveablethresholdP2 or global.population3[i,j]<liveablethresholdP3){
				global.gridpointIsSand[i,j]=true;
				global.gridpointIsUpdated[i,j]=true;
				for (m=max(i-1,0);m<min(i+2,global.gridWidth);m++){
					for (n=max(j-1,0);n<min(j+2,global.gridHeight);n++){
						global.gridpointIsUpdated[m,n]=true;
					}
				}
			}
		}	
	}		
}


for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		if global.gridpointIsUpdated[i,j]{
			if global.gridpointIsSand[i,j]{
				AdjacentU=false;
				AdjacentD=false;
				AdjacentL=false;
				AdjacentR=false;
				AdjacentUL=false;
				AdjacentDL=false;
				AdjacentUR=false;
				AdjacentDR=false;

				for (m=max(i-1,0);m<min(i+2,global.gridWidth);m++){
					for (n=max(j-1,0);n<min(j+2,global.gridHeight);n++){
						if (!global.gridpointIsSand[m,n]){
							if (m>i and n==j){
								AdjacentR=true;
							}
			
							if (m<i and n==j){
								AdjacentL=true;
							}
			
							if (m==i and n>j){
								AdjacentD=true;
							}
			
							if (m==i and n<j){
								AdjacentU=true;
							}
			
							if (m>i	and n>j){
								AdjacentDR=true;
							}
			
							if (m>i	and n<j){
								AdjacentUR=true;
							}
			
							if (m<i	and n>j){
								AdjacentDL=true;
							}
			
							if (m<i	and n<j){
								AdjacentUL=true;
							}
						}
					}
				}	
	
				script_execute(sct_lvl3_tile_adjust);
			}else{
				tilemap_set(global.layerSand,global.tileEmpty,2*i,2*j);
				tilemap_set(global.layerSand,global.tileEmpty,2*i+1,2*j);
				tilemap_set(global.layerSand,global.tileEmpty,2*i,2*j+1);
				tilemap_set(global.layerSand,global.tileEmpty,2*i+1,2*j+1);
			}
			global.gridpointIsUpdated[i,j]=false;
		}		
	}
}


