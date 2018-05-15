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
 
growthrate=-0.02;
competitionrateP1=-0.003;
feedingrateP2=0.0002//0.00025;
maxfeedingrateP2=0.01//0.015;
feedingrateP3=0.00002;//0.00005;
maxfeedingrateP3=0.02;
liveablethresholdP2=5;
liveablethresholdP3=50;

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		if (population4[i,j]>-1){
			diff=global.population4[i,j]*(growthrate+min(feedingrateP2*global.population2[i,j],maxfeedingrateP2)+min(feedingrateP3*global.population3[i,j],maxfeedingrateP3)+competitionrateP1*global.population4[i,j]/max(global.population1[i,j],1));
			if(diff>0){
				diff=ceil(diff);
			}
			if(diff<0){
				diff=floor(diff);
			}
			
			population4[i,j]=max(global.population4[i,j]+diff,0);
			
		}
	}	
}

