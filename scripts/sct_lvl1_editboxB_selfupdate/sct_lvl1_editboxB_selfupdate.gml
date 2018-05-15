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

if pluscheck {
	switch (population) {
			case 1:
				if(global.population1[gridvaluex,gridvaluey]>-1){
					if(global.population1[gridvaluex,gridvaluey]+100*power(2,pluscounter)<global.population1LocalThreshold){
						global.totalPopulation1+=100*power(2,pluscounter);
						global.population1[gridvaluex,gridvaluey]+=100*power(2,pluscounter);
					}else{
						global.totalPopulation1+=global.population1LocalThreshold-global.population1[gridvaluex,gridvaluey];
						global.population1[gridvaluex,gridvaluey]=global.population1LocalThreshold;
					}
				}
				break;
			case 2:
				if(global.population2[gridvaluex,gridvaluey]>-1){
					if(global.population2[gridvaluex,gridvaluey]+100*power(2,pluscounter)<global.population2LocalThreshold){
						global.totalPopulation2+=100*power(2,pluscounter);
						global.population2[gridvaluex,gridvaluey]+=100*power(2,pluscounter);
					}else{
						global.totalPopulation2+=global.population2LocalThreshold-global.population2[gridvaluex,gridvaluey];
						global.population2[gridvaluex,gridvaluey]=global.population2LocalThreshold;
					}
				}
				break;
			default:
				show_message("There's an error");
		}
	pluscounter+=1;
	minuscounter=0;
	pluscheck=false;
}

if minuscheck {
	switch (population) {
			case 1:
				if(global.population1[gridvaluex,gridvaluey]>-1){
					if(global.population1[gridvaluex,gridvaluey]-100*power(2,minuscounter)>0){
						global.totalPopulation1-=100*power(2,pluscounter);
						global.population1[gridvaluex,gridvaluey]-=100*power(2,minuscounter);
					}else{
						global.totalPopulation1-=global.population1[gridvaluex,gridvaluey];
						global.population1[gridvaluex,gridvaluey]=0;
					}
				}
				break;
			case 2:
				if(global.population2[gridvaluex,gridvaluey]>-1){
					if(global.population2[gridvaluex,gridvaluey]-100*power(2,minuscounter)>0){
						global.totalPopulation2-=100*power(2,pluscounter);
						global.population2[gridvaluex,gridvaluey]-=100*power(2,minuscounter);
					}else{
						global.totalPopulation2-=global.population2[gridvaluex,gridvaluey];
						global.population2[gridvaluex,gridvaluey]=0;
					}
				}
				break;
			default:
				show_message("There's an error");
		}
	minuscounter+=1;
	pluscounter=0;
	minuscheck=false;
}
