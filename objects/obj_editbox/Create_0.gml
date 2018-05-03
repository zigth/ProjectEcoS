/// @description Insert description here
// You can write your code in this editor
gridvaluex=-1;
gridvaluey=-1;

currentReservesTextboxIds[global.populationNumber-1]=0;
currentTextboxIds[global.populationNumber-1]=0;
keyboard_string="";

stringHeights=0;
for (i=0;i<global.reservesNumber;i++){
	stringHeights+=string_height(global.reservesNames[i]);
	currentReservesTextboxIds[i]=instance_create_depth(x+sprite_get_width(spr_textbox)/2+5,y+(2*i+1)*sprite_get_height(spr_textbox)/2+stringHeights+(i+1)*10,-2,usedTextbox);
	currentReservesTextboxIds[i].population=-i-1;
}
for (i=0;i<global.populationNumber;i++){
	stringHeights+=string_height(global.populationNames[i]);
	currentTextboxIds[i]=instance_create_depth(x+sprite_get_width(spr_textbox)/2+5,y+(2*(i+global.reservesNumber)+1)*sprite_get_height(spr_textbox)/2+stringHeights+(i+global.reservesNumber+1)*10,-2,usedTextbox);
	currentTextboxIds[i].population=i+1;
}

currentClosebutton = instance_create_depth(x+sprite_get_width(spr_editbox)-sprite_get_width(spr_closebutton)-5,y+5,-2,obj_closebutton);
gridupdated=false;
presscheck=true;

/*stringHeights=0;
for(i=0;i<global.populationNumber;i++){
	stringHeights+=string_height(global.populationNames[i]);
}*/
selfHeight=(global.reservesNumber+global.populationNumber)*(sprite_get_height(spr_textbox)+10)+stringHeights+10;
//selfWidth=sprite_width;


//script_execute(sct_lvl1_editbox_create);


