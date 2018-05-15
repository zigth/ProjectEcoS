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
 
global.populationNumber=4;
global.reservesNumber=1;

global.representationratio=10;

global.population1Reserve=6000000;
global.population1DefaultReserve=global.population1Reserve;
global.population1VisualThreshold=1000;
global.population1LocalThreshold=10000;
global.population1Threshold=global.population1LocalThreshold*global.gridWidth*global.gridHeight;
global.population1Maximum=0;
global.population1Minimum=global.population1Threshold;

global.population1[global.gridWidth-1,global.gridHeight-1]=0;
script_execute(sct_lvl3_initialize_population1);


global.population2VisualThreshold=100;
global.population2LocalThreshold=500;
global.population2Threshold=global.population2LocalThreshold*global.gridWidth*global.gridHeight;
global.population2Maximum=0;
global.population2Minimum=global.population2Threshold;

global.population2[global.gridWidth-1,global.gridHeight-1]=0;
script_execute(sct_lvl3_initialize_population2)


global.population3VisualThreshold=1000;
global.population3LocalThreshold=5000;
global.population3Threshold=global.population3LocalThreshold*global.gridWidth*global.gridHeight;
global.population3Maximum=0;
global.population3Minimum=global.population3Threshold;

global.population3[global.gridWidth-1,global.gridHeight-1]=0;
script_execute(sct_lvl3_initialize_population3);


global.population4VisualThreshold=1000;
global.population4LocalThreshold=10000;
global.population4Threshold=global.population4LocalThreshold*global.gridWidth*global.gridHeight;
global.population4Maximum=0;
global.population4Minimum=global.population4Threshold;

global.population4[global.gridWidth-1,global.gridHeight-1]=0;
script_execute(sct_lvl3_initialize_population4);

global.populationNames[global.populationNumber-1]="";

global.populationNames[0]="Water";
global.populationNames[1]="Trees";
global.populationNames[2]="Plants";
global.populationNames[3]="Animals";

if global.reservesNumber>0{
	global.reservesNames[global.reservesNumber-1]="";
}

global.reservesNames[0]="Water Reserve";

global.totalPopulation1=0;
global.totalPopulation2=0;
global.totalPopulation3=0;
global.totalPopulation4=0;
for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		global.totalPopulation1+=max(global.population1[i,j],0);
		global.totalPopulation2+=max(global.population2[i,j],0);
		global.totalPopulation3+=max(global.population3[i,j],0);
		global.totalPopulation4+=max(global.population4[i,j],0);		
	}	
}

global.gridpointIsSand[global.gridWidth-1,global.gridHeight-1]=false;
script_execute(sct_lvl3_tile_setup);
