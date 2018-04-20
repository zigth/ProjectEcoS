/// @description Insert description here
// You can write your code in this editor

script_execute(sct_lvl3_gridpoint_validityTest);

usedEditbox=obj_lvl3_editbox;
usedEditboxWidth=sprite_get_width(spr_editbox);

/*usedEditbox=obj_lvl3_editboxB;
stringWidths=0;
for(i=0;i<global.populationNumber;i++){
	stringWidths+=max(string_width(global.populationNames[i]),sprite_get_width(spr_plusbutton*2)+10); //get rid of max() opt
}
usedEditboxWidth=stringWidths+global.populationNumber*(10/*20+sprite_get_width(spr_plusbutton))+20; //+sprite_get_width(spr_closebutton)+30;
*/
event_inherited();

