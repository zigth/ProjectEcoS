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

tutorialstate=1;
maxSlideNumber=8;

instance_create_depth(x+room_width/2-sprite_get_width(spr_button)-30,y+room_height-sprite_get_height(spr_button)-80,-2,obj_tutorial_previousbutton);
nextbutton=instance_create_depth(x+room_width/2+30,y+room_height-sprite_get_height(spr_button)-80,-2,obj_tutorial_nextbutton);
nextbutton.maxSlideNumber=maxSlideNumber;

instance_create_depth(x+(room_width-sprite_get_width(spr_button))/2,y+room_height-sprite_get_height(spr_button)-30,-2,obj_quitbutton);