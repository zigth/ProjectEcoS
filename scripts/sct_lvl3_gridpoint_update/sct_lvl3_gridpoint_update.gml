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

if global.timeflow {
	for (i=0;i<min(global.population1[gridvaluex,gridvaluey],global.population1VisualThreshold)/global.representationratio;i++){
		dots1[i,0]=x+random(global.gridPointSize-sprite_get_width(spriteP1));
		dots1[i,1]=y+random(global.gridPointSize-sprite_get_height(spriteP1));
	}
	
	/*for (i=0;i<min(global.population2[gridvaluex,gridvaluey],global.population2VisualThreshold)/global.representationratio;i++){
		dots2[i,0]=x+random(global.gridPointSize-sprite_get_width(spriteP2));
		dots2[i,1]=y+random(global.gridPointSize-sprite_get_height(spriteP2));
	}*/
	
	/*for (i=0;i<min(global.population3[gridvaluex,gridvaluey],global.population3VisualThreshold)/global.representationratio;i++){
		dots3[i,0]=x+random(global.gridPointSize-sprite_get_width(spriteP3));
		dots3[i,1]=y+random(global.gridPointSize-sprite_get_height(spriteP3));
	}*/
	
	for (i=0;i<min(global.population4[gridvaluex,gridvaluey],global.population4VisualThreshold)/global.representationratio;i++){
		dots4[i,0]=x+random(global.gridPointSize-sprite_get_width(spriteP4));
		dots4[i,1]=y+random(global.gridPointSize-sprite_get_height(spriteP4));
	}
}

