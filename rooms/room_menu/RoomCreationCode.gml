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

instance_create_depth(0,0,0,obj_options_background);

instance_create_depth(room_width/2,80+(room_height-160)/6,-2,obj_lvl1button);
instance_create_depth(room_width/2,80+2*(room_height-160)/6,-2,obj_lvl2button);
instance_create_depth(room_width/2,80+3*(room_height-160)/6,-2,obj_lvl3button);
instance_create_depth(room_width/2,80+4*(room_height-160)/6,-2,obj_tutorialbutton);
instance_create_depth(room_width/2,80+5*(room_height-160)/6,-2,obj_optionsbutton);



