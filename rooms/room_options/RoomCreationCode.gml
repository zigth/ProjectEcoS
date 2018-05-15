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

instance_create_depth(x+(room_width-sprite_get_width(spr_button))/2-70,230,-2,obj_options_tickbox_editboxB);
instance_create_depth(x+(room_width-sprite_get_width(spr_button))/2-70,260,-2,obj_options_tickbox_editboxA);

instance_create_depth(x+(room_width-sprite_get_width(spr_button))/2,300,-2,obj_quitbutton);