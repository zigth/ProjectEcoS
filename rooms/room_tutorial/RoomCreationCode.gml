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

global.gridPointSize=sprite_get_width(spr_gridpoint1);

global.gridWidth=room_width/global.gridPointSize;
global.gridHeight=room_height/global.gridPointSize;

script_execute(sct_lvl1_background_setup);

instance_create_depth(0,0,1,obj_lvl1_background);



instance_create_depth(0,0,-1,obj_tutorial);
