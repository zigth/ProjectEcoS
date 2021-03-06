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


global.timeflow=false;
global.timeflowrate=20;

global.timeElapsed=0;
global.lastWinCheckUpdate=0;
global.winCounter=300;



script_execute(sct_lvl1_populations_setup);
script_execute(sct_lvl1_background_setup);


room_goto(room_lvl1);
