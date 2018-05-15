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

growthrate=0.02;
reductionrateP1=-0.008;
carryingcapacity=10000;

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		if (population3[i,j]>-1){
			diff=growthrate*global.population3[i,j]+reductionrateP1*global.population1[i,j];
			diff=diff*(1-global.population3[i,j]/carryingcapacity);
			if(diff>0){
				diff=ceil(diff);
			}
			if(diff<0){
				diff=floor(diff);
			}
			population3[i,j]=max(global.population3[i,j]+diff,0);
		}
	}	
}

