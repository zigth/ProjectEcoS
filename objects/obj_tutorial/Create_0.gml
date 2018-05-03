/// @description Insert description here
// You can write your code in this editor

tutorialstate=1;
maxSlideNumber=8;

instance_create_depth(x+room_width/2-sprite_get_width(spr_button)-30,y+room_height-sprite_get_height(spr_button)-80,-2,obj_tutorial_previousbutton);
nextbutton=instance_create_depth(x+room_width/2+30,y+room_height-sprite_get_height(spr_button)-80,-2,obj_tutorial_nextbutton);
nextbutton.maxSlideNumber=maxSlideNumber;

instance_create_depth(x+(room_width-sprite_get_width(spr_button))/2,y+room_height-sprite_get_height(spr_button)-30,-2,obj_quitbutton);