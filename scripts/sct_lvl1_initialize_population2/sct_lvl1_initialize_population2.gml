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

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		global.population2[i,j]=-1;
	}	
}

global.population2[8,10]=0;
global.population2[8,11]=0;
for(j=9;j<14;j++){
	global.population2[9,j]=0;
}
global.population2[10,4]=0;
global.population2[10,5]=0;
for(j=8;j<21;j++){
	global.population2[10,j]=0;
}
for(j=4;j<21;j++){
	global.population2[11,j]=0;
}
for(j=4;j<22;j++){
	global.population2[12,j]=0;
}
for(j=5;j<22;j++){
	global.population2[13,j]=0;
}
for(j=5;j<20;j++){
	global.population2[14,j]=0;
}
for(j=6;j<19;j++){
	global.population2[15,j]=0;
}
for(j=6;j<18;j++){
	global.population2[16,j]=0;
}
for(j=7;j<18;j++){
	global.population2[17,j]=0;
}
for(j=7;j<17;j++){
	global.population2[18,j]=0;
}
for(j=8;j<17;j++){
	global.population2[19,j]=0;
}
for(j=9;j<17;j++){
	global.population2[20,j]=0;
}
for(j=11;j<17;j++){
	global.population2[21,j]=0;
}
for(j=12;j<16;j++){
	global.population2[22,j]=0;
}
for(j=13;j<15;j++){
	global.population2[23,j]=0;
}

