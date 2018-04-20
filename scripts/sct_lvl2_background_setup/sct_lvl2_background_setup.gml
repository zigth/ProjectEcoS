global.backgroundtiles[global.gridWidth-1,global.gridHeight-1]=0;

for (i=0;i<global.gridWidth;i++){
	for (j=0;j<global.gridHeight;j++){
		global.backgroundtiles[i,j]=0;
	}
}

global.backgroundtiles[9,3]=31;
global.backgroundtiles[10,3]=21;
global.backgroundtiles[11,3]=21;
global.backgroundtiles[12,3]=21;
global.backgroundtiles[13,3]=30;
global.backgroundtiles[13,4]=40;
global.backgroundtiles[14,4]=21;
global.backgroundtiles[15,4]=30;
global.backgroundtiles[15,5]=40;
global.backgroundtiles[16,5]=21;
global.backgroundtiles[17,5]=30;
global.backgroundtiles[17,6]=40;
global.backgroundtiles[18,6]=21;
global.backgroundtiles[19,6]=30;
global.backgroundtiles[19,7]=40;
global.backgroundtiles[20,7]=30;
global.backgroundtiles[20,8]=40;
global.backgroundtiles[21,8]=30;
global.backgroundtiles[21,9]=20;
global.backgroundtiles[21,10]=40;
global.backgroundtiles[22,10]=30;
global.backgroundtiles[22,11]=40;
global.backgroundtiles[23,11]=30;
global.backgroundtiles[23,12]=40;
global.backgroundtiles[24,12]=30;
global.backgroundtiles[24,13]=20;
global.backgroundtiles[24,14]=20;
global.backgroundtiles[24,15]=33;
global.backgroundtiles[23,15]=43;
global.backgroundtiles[23,16]=33;
global.backgroundtiles[22,16]=43;
global.backgroundtiles[22,17]=33;
global.backgroundtiles[21,17]=23;
global.backgroundtiles[20,17]=23;
global.backgroundtiles[19,17]=23;
global.backgroundtiles[18,17]=43;
global.backgroundtiles[18,18]=33;
global.backgroundtiles[17,18]=23;
global.backgroundtiles[16,18]=43;
global.backgroundtiles[16,19]=33;
global.backgroundtiles[15,19]=43;
global.backgroundtiles[15,20]=33;
global.backgroundtiles[14,20]=43;
global.backgroundtiles[14,21]=20;
global.backgroundtiles[14,22]=33;
global.backgroundtiles[13,22]=23;
global.backgroundtiles[12,22]=23;
global.backgroundtiles[11,22]=32;
global.backgroundtiles[11,21]=42;
global.backgroundtiles[10,21]=23;
global.backgroundtiles[9,21]=32;
global.backgroundtiles[9,20]=22;
global.backgroundtiles[9,19]=22;
global.backgroundtiles[9,18]=22;
global.backgroundtiles[9,17]=22;
global.backgroundtiles[9,16]=22;
global.backgroundtiles[9,15]=22;
global.backgroundtiles[9,14]=42;
global.backgroundtiles[8,14]=32;
global.backgroundtiles[8,13]=22;
global.backgroundtiles[8,12]=42;
global.backgroundtiles[7,12]=32;
global.backgroundtiles[7,11]=22;
global.backgroundtiles[7,10]=22;
global.backgroundtiles[7,9]=31;
global.backgroundtiles[8,9]=41;
global.backgroundtiles[8,8]=31;
global.backgroundtiles[9,8]=41;
global.backgroundtiles[9,7]=31;
global.backgroundtiles[10,7]=41;
global.backgroundtiles[10,6]=42;
global.backgroundtiles[9,6]=32;
global.backgroundtiles[9,5]=22;
global.backgroundtiles[9,4]=22;

i=8;
for (j=10;j<12;j++){
	global.backgroundtiles[i,j]=1;
}
i=9;
for (j=9;j<14;j++){
	global.backgroundtiles[i,j]=1;
}
i=10;
for (j=4;j<6;j++){
	global.backgroundtiles[i,j]=1;
}
for (j=8;j<21;j++){
	global.backgroundtiles[i,j]=1;
}
i=11;
for (j=4;j<21;j++){
	global.backgroundtiles[i,j]=1;
}
i=12;
for (j=4;j<22;j++){
	global.backgroundtiles[i,j]=1;
}
i=13;
for (j=5;j<22;j++){
	global.backgroundtiles[i,j]=1;
}
i=14;
for (j=5;j<20;j++){
	global.backgroundtiles[i,j]=1;
}
i=15;
for (j=6;j<19;j++){
	global.backgroundtiles[i,j]=1;
}
i=16;
for (j=6;j<18;j++){
	global.backgroundtiles[i,j]=1;
}
i=17;
for (j=7;j<18;j++){
	global.backgroundtiles[i,j]=1;
}
i=18;
for (j=7;j<17;j++){
	global.backgroundtiles[i,j]=1;
}
i=19;
for (j=8;j<17;j++){
	global.backgroundtiles[i,j]=1;
}
i=20;
for (j=9;j<17;j++){
	global.backgroundtiles[i,j]=1;
}
i=21;
for (j=11;j<17;j++){
	global.backgroundtiles[i,j]=1;
}
i=22;
for (j=12;j<16;j++){
	global.backgroundtiles[i,j]=1;
}
i=23;
for (j=13;j<15;j++){
	global.backgroundtiles[i,j]=1;
}

/*
global.backgroundtiles[9,3]=31;
global.backgroundtiles[10,3]=21;
global.backgroundtiles[11,3]=21;
global.backgroundtiles[12,3]=30;
global.backgroundtiles[12,4]=40;
global.backgroundtiles[13,4]=21;
global.backgroundtiles[14,4]=30;
global.backgroundtiles[14,5]=40;
global.backgroundtiles[15,5]=21;
global.backgroundtiles[16,5]=30;
global.backgroundtiles[16,6]=40;
global.backgroundtiles[17,6]=21;
global.backgroundtiles[18,6]=30;
global.backgroundtiles[18,7]=40;
global.backgroundtiles[19,7]=30;
global.backgroundtiles[19,8]=40;
global.backgroundtiles[20,8]=21;
global.backgroundtiles[21,8]=30;
global.backgroundtiles[21,9]=20;
global.backgroundtiles[21,10]=20;
global.backgroundtiles[21,11]=40;
global.backgroundtiles[22,11]=30;
global.backgroundtiles[22,12]=40;
global.backgroundtiles[23,12]=21;
global.backgroundtiles[24,12]=30;
global.backgroundtiles[24,13]=20;
global.backgroundtiles[24,14]=33;
global.backgroundtiles[23,14]=43;
global.backgroundtiles[23,15]=33;
global.backgroundtiles[22,15]=43;
global.backgroundtiles[22,16]=20;
global.backgroundtiles[22,17]=33;
global.backgroundtiles[21,17]=23;
global.backgroundtiles[20,17]=23;
global.backgroundtiles[19,17]=23;
global.backgroundtiles[18,17]=23;
global.backgroundtiles[17,17]=43;
global.backgroundtiles[17,18]=33;
global.backgroundtiles[16,18]=23;
global.backgroundtiles[15,18]=43;
global.backgroundtiles[15,19]=33;
global.backgroundtiles[14,19]=43;
global.backgroundtiles[14,20]=20;
global.backgroundtiles[14,21]=33;
global.backgroundtiles[13,21]=43;
global.backgroundtiles[13,22]=33;
global.backgroundtiles[12,22]=32;
global.backgroundtiles[12,21]=42;
global.backgroundtiles[11,21]=23;
global.backgroundtiles[10,21]=23;
global.backgroundtiles[9,21]=32;
global.backgroundtiles[9,20]=22;
global.backgroundtiles[9,19]=22;
global.backgroundtiles[9,18]=22;
global.backgroundtiles[9,17]=22;
global.backgroundtiles[9,16]=22;
global.backgroundtiles[9,15]=22;
global.backgroundtiles[9,14]=22;
global.backgroundtiles[9,13]=42;
global.backgroundtiles[8,13]=32;
global.backgroundtiles[8,12]=22;
global.backgroundtiles[8,11]=42;
global.backgroundtiles[7,11]=32;
global.backgroundtiles[7,10]=31;
global.backgroundtiles[8,10]=41;
global.backgroundtiles[8,9]=31;
global.backgroundtiles[9,9]=41;
global.backgroundtiles[9,8]=31;
global.backgroundtiles[10,8]=41;
global.backgroundtiles[10,7]=22;
global.backgroundtiles[10,6]=22;
global.backgroundtiles[10,5]=42;
global.backgroundtiles[9,5]=32;
global.backgroundtiles[9,4]=22;

i=9;
for (j=10;j<13;j++){
	global.backgroundtiles[i,j]=1;
}
global.backgroundtiles[10,4]=1;
i=10;
for (j=9;j<21;j++){
	global.backgroundtiles[i,j]=1;
}
i=11;
for (j=4;j<21;j++){
	global.backgroundtiles[i,j]=1;
}
i=12;
for (j=5;j<21;j++){
	global.backgroundtiles[i,j]=1;
}
i=13;
for (j=5;j<21;j++){
	global.backgroundtiles[i,j]=1;
}
i=14;
for (j=6;j<19;j++){
	global.backgroundtiles[i,j]=1;
}
i=15;
for (j=6;j<18;j++){
	global.backgroundtiles[i,j]=1;
}
i=16;
for (j=7;j<18;j++){
	global.backgroundtiles[i,j]=1;
}
i=17;
for (j=7;j<17;j++){
	global.backgroundtiles[i,j]=1;
}
i=18;
for (j=8;j<17;j++){
	global.backgroundtiles[i,j]=1;
}
i=19;
for (j=9;j<17;j++){
	global.backgroundtiles[i,j]=1;
}
i=20;
for (j=9;j<17;j++){
	global.backgroundtiles[i,j]=1;
}
i=21;
for (j=12;j<17;j++){
	global.backgroundtiles[i,j]=1;
}
i=22;
for (j=13;j<15;j++){
	global.backgroundtiles[i,j]=1;
}
global.backgroundtiles[23,13]=1;
*/








