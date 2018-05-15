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

instance_create_depth(0,0,1,obj_lvl1_background);

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		layer_instances=layer_create(0);
		instance_create_layer(global.gridPointSize*i,global.gridPointSize*j,layer_instances,obj_lvl1_gridpoint);
	}	
}

instance_create_depth((room_width-sprite_get_width(spr_message))/2,100,-1,obj_lvl1_intro);