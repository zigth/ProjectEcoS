/// @description Insert description here
// You can write your code in this editor

usedTextbox=obj_lvl2_textbox;

event_inherited();

/*stringHeights=0;
for (i=0;i<global.populationNumber;i++){
	stringHeights+=string_height(global.populationNames[i]);
	currentTextboxIds[i]=instance_create_depth(x+sprite_get_width(spr_textbox)/2+5,y+(2*i+1)*sprite_get_height(spr_textbox)/2+stringHeights+(i+1)*10,-2,obj_lvl2_textbox);
	currentTextboxIds[i].population=i+1;
}*/

script_execute(sct_lvl2_editbox_textboxsetclickable);