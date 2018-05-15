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

if(string_digits(text)==text){
	switch (population) {
			case 1:
				if(global.population1[gridvaluex,gridvaluey]>-1){
					
					if(real(text)<global.population1Threshold and (real(text)>=global.population1[gridvaluex,gridvaluey]) and (real(text)-global.population1[gridvaluex,gridvaluey]<=global.population1Reserve)){
						global.totalPopulation1+=floor(real(text))-global.population1[gridvaluex,gridvaluey];
						global.population1Reserve-=real(text)-global.population1[gridvaluex,gridvaluey];
						global.population1[gridvaluex,gridvaluey]=floor(real(text));
						text=string(global.population1[gridvaluex,gridvaluey]);
						editBox=instance_find(obj_editbox,0);
						editBox.currentReservesTextboxIds[0].text=string(global.population1Reserve);
					}else{
						text="Invalid input";
						alarm[2]=20;
					}
					
				}
				break;
			case 2:
				if(global.population2[gridvaluex,gridvaluey]>-1){
					
					if(real(text)<global.population2Threshold and (real(text)>=global.population2[gridvaluex,gridvaluey])){ //the second condition is a problem particular restriction
						global.totalPopulation2+=floor(real(text))-global.population2[gridvaluex,gridvaluey];
						global.population2[gridvaluex,gridvaluey]=floor(real(text));
						text=string(global.population2[gridvaluex,gridvaluey]);
					}else{
						text="Invalid input";
						alarm[2]=20;
					}
					
				}
				break;
			case 3:
				if(global.population3[gridvaluex,gridvaluey]>-1){
					
					if(real(text)<global.population3Threshold){ 
						global.totalPopulation3+=floor(real(text))-global.population3[gridvaluex,gridvaluey];
						global.population3[gridvaluex,gridvaluey]=floor(real(text));
						text=string(global.population3[gridvaluex,gridvaluey]);
					}else{
						text="Invalid input";
						alarm[2]=20;
					}
					
				}
				break;
			case 4:
				if(global.population4[gridvaluex,gridvaluey]>-1){
					
					if(real(text)<global.population4Threshold){ 
						global.totalPopulation4+=floor(real(text))-global.population4[gridvaluex,gridvaluey];
						global.population4[gridvaluex,gridvaluey]=floor(real(text));
						text=string(global.population4[gridvaluex,gridvaluey]);
					}else{
						text="Invalid input";
						alarm[2]=20;
					}
					
				}
				break;	
			default:
				text="error no connected value";
		}
}else{
	
	text="Invalid input";
	alarm[2]=20;
	
}

