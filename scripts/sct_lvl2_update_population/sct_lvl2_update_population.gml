/*population1=global.population1;
script_execute(sct_lvl2_update_population1);

population2=global.population2;
script_execute(sct_lvl2_update_population2);

population3=global.population3;
script_execute(sct_lvl2_update_population3);


global.population1=population1;
global.population2=population2;
global.population3=population3;


population1=global.population1;
script_execute(sct_lvl2_migrate_population1);

population2=global.population2;
script_execute(sct_lvl2_migrate_population2);

population3=global.population3;
script_execute(sct_lvl2_migrate_population3);

global.population1=population1;
global.population2=population2;
global.population3=population3;
*/

//population1=global.population1;
population1[global.gridWidth-1,global.gridHeight-1]=0;
for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		population1[i,j]=global.population1[i,j];
	}
}
script_execute(sct_lvl2_update_population1);

//population2=global.population2;
population2[global.gridWidth-1,global.gridHeight-1]=0;
for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		population2[i,j]=global.population2[i,j];
	}
}
script_execute(sct_lvl2_update_population2);

//population3=global.population3;
population3[global.gridWidth-1,global.gridHeight-1]=0;
for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		population3[i,j]=global.population3[i,j];
	}
}
script_execute(sct_lvl2_update_population3);


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
//global.population3=population3;
for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		global.population3[i,j]=population3[i,j];
	}
}


//population1=global.population1;
population1[global.gridWidth-1,global.gridHeight-1]=0;
for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		population1[i,j]=global.population1[i,j];
	}
}
script_execute(sct_lvl2_migrate_population1);

//population2=global.population2;
population2[global.gridWidth-1,global.gridHeight-1]=0;
for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		population2[i,j]=global.population2[i,j];
	}
}
script_execute(sct_lvl2_migrate_population2);

//population3=global.population3;
population3[global.gridWidth-1,global.gridHeight-1]=0;
for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		population3[i,j]=global.population3[i,j];
	}
}
script_execute(sct_lvl2_migrate_population3);


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
//global.population3=population3;
for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		global.population3[i,j]=population3[i,j];
	}
}


global.totalPopulation1=0;
global.totalPopulation2=0;
global.totalPopulation3=0;
for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		global.totalPopulation1+=max(global.population1[i,j],0);
		global.totalPopulation2+=max(global.population2[i,j],0);
		global.totalPopulation3+=max(global.population3[i,j],0);
	}	
}

script_execute(sct_lvl2_loss_check);
script_execute(sct_lvl2_win_check);


global.timeElapsed++;

