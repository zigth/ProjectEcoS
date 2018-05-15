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

text="Game over \nThe ecosystem is irreparably damaged.";

instance_create_depth(x+sprite_width/2-sprite_get_width(spr_button)-20,y+sprite_height-sprite_get_height(spr_button)-15,-2,repeatbutton);
instance_create_depth(x+sprite_width/2+20,y+sprite_height-sprite_get_height(spr_button)-15,-2,quitbutton);

