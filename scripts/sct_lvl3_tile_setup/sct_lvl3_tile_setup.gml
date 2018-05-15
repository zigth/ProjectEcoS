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
		global.gridpointIsSand[i,j]=true;
	}	
}

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		if i+j<20 {
			global.gridpointIsSand[i,j]=false;
		}	
	}	
}

for (i=0;i<6;i++){
	for(j=20;j<global.gridHeight;j++){
		global.gridpointIsSand[i,j]=true;
	}	
}

