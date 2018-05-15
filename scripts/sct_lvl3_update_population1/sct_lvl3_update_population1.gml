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

evaporationrate=-0.3;
retentionrateP2=0.0045//0.0045;
feedingrateP2=-0.0002//-0.0005//-0.15;
maxretentionrateP2=0.162;
retentionrateP3=0.00028//0.00028;
feedingrateP3=-0.00001//-0.00003//-0.015;
maxretentionrateP3=0.162;
rainfall=20;
maxrainfallodds=50;
rainfallfactorP1=0.25;
maxrainfallfactorP1=25;
rainfallfactorP2=0.025;
maxrainfallfactorP2=25;

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		if (population1[i,j]>-1){
			diff=global.population1[i,j]*(evaporationrate+min(retentionrateP2*global.population2[i,j],maxretentionrateP2)+min(retentionrateP3*global.population3[i,j],maxretentionrateP3)+feedingrateP2*global.population2[i,j]+feedingrateP3*global.population3[i,j]);
			rainfallodds=maxrainfallodds/(min(rainfallfactorP1*global.population1[i,j],maxrainfallfactorP1)+min(rainfallfactorP2*global.population2[i,j],maxrainfallfactorP2));
			if random(rainfallodds)<1{
				diff=diff+rainfall*rainfallodds;
			}
			if(diff>0){
				diff=ceil(diff);
			}
			if(diff<0){
				//diff=floor(diff);
				diff=ceil(diff);
			}
			population1[i,j]=max(global.population1[i,j]+diff,0);
		}
	}	
}

