global.populationNumber=3;
global.reservesNumber=0;

global.representationratio=10;


global.population1VisualThreshold=1000;
global.population1LocalThreshold=10000;
global.population1Threshold=global.population1LocalThreshold*global.gridWidth*global.gridHeight;
global.population1Maximum=0;
global.population1Minimum=global.population1Threshold;

global.population1[global.gridWidth-1,global.gridHeight-1]=0;
script_execute(sct_lvl2_initialize_population1);


global.population2VisualThreshold=1000;
global.population2LocalThreshold=5000;
global.population2Threshold=global.population2LocalThreshold*global.gridWidth*global.gridHeight;
global.population2Maximum=0;
global.population2Minimum=global.population2Threshold;

global.population2[global.gridWidth-1,global.gridHeight-1]=0;
script_execute(sct_lvl2_initialize_population2)


global.population3VisualThreshold=1000;
global.population3LocalThreshold=10000;
global.population3Threshold=global.population3LocalThreshold*global.gridWidth*global.gridHeight;
global.population3Maximum=0;
global.population3Minimum=global.population3Threshold;

global.population3[global.gridWidth-1,global.gridHeight-1]=0;
script_execute(sct_lvl2_initialize_population3);

global.populationNames[global.populationNumber-1]="";

global.populationNames[0]="Rabbits";
global.populationNames[1]="Wolves";
global.populationNames[2]="Plants";

if global.reservesNumber>0{
	global.reservesNames[global.reservesNumber-1]="";
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