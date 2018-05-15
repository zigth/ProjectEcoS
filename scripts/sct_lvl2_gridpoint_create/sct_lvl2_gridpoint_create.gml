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

dots1[global.population1VisualThreshold/global.representationratio-1,1]=0;

for (i=0;i<global.population1VisualThreshold/global.representationratio;i++){
	for (j=0;j<2;j++){
		if(j==0){
				dots1[i,j]=x+random(global.gridPointSize-sprite_get_width(spr_reddot3));
			}else{
				dots1[i,j]=y+random(global.gridPointSize-sprite_get_height(spr_reddot3));
			}
	}
}

dots2[global.population2VisualThreshold/global.representationratio-1,1]=0;

for (i=0;i<global.population2VisualThreshold/global.representationratio;i++){
	for (j=0;j<2;j++){
		if(j==0){
				dots2[i,j]=x+random(global.gridPointSize-sprite_get_width(spr_bluedot5));
			}else{
				dots2[i,j]=y+random(global.gridPointSize-sprite_get_height(spr_bluedot5));
			}
	}
}

dots3[global.population3VisualThreshold/global.representationratio-1,1]=0;

for (i=0;i<global.population3VisualThreshold/global.representationratio;i++){
	for (j=0;j<2;j++){
		if(j==0){
				dots3[i,j]=x+random(global.gridPointSize-sprite_get_width(spr_greendot5));
			}else{
				dots3[i,j]=y+random(global.gridPointSize-sprite_get_height(spr_greendot5));
			}
	}
}

