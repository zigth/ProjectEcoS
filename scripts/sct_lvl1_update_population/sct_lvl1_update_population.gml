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
 
//population1=global.population1;
population1[global.gridWidth-1,global.gridHeight-1]=0;
for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		population1[i,j]=global.population1[i,j];
	}
}
script_execute(sct_lvl1_update_population1);

//population2=global.population2;
population2[global.gridWidth-1,global.gridHeight-1]=0;
for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		population2[i,j]=global.population2[i,j];
	}
}
script_execute(sct_lvl1_update_population2);


//global.population1=population1;
for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		global.population1[i,j]=population1[i,j];
	}
}
//global.population2=population2;
for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		global.population2[i,j]=population2[i,j];
	}
}


//population1=global.population1;
population1[global.gridWidth-1,global.gridHeight-1]=0;
for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		population1[i,j]=global.population1[i,j];
	}
}
script_execute(sct_lvl1_migrate_population1);

//population2=global.population2;
population2[global.gridWidth-1,global.gridHeight-1]=0;
for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		population2[i,j]=global.population2[i,j];
	}
}
script_execute(sct_lvl1_migrate_population2);


//global.population1=population1;
for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		global.population1[i,j]=population1[i,j];
	}
}
//global.population2=population2;
for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		global.population2[i,j]=population2[i,j];
	}
}


global.totalPopulation1=0;
global.totalPopulation2=0;
for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		global.totalPopulation1+=max(global.population1[i,j],0);
		global.totalPopulation2+=max(global.population2[i,j],0);
	}	
}

script_execute(sct_lvl1_loss_check);
script_execute(sct_lvl1_win_check);


global.timeElapsed++;


