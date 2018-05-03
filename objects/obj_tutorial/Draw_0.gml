/// @description Insert description here
// You can write your code in this editor

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		draw_sprite(spr_gridpoint1,image_index,i*global.gridPointSize,j*global.gridPointSize);
	}	
}

draw_sprite(spr_playbutton,image_index,27*global.gridPointSize,22*global.gridPointSize);
draw_sprite(spr_monitor,image_index,1*global.gridPointSize,19*global.gridPointSize);


draw_sprite_ext(spr_blackBackground,image_index,0,0,room_width/sprite_width,room_height/sprite_height,0,c_white,0.5);


draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

switch (tutorialstate) {
	case 1:
		draw_text(room_width/2,room_height/2,"Welcome to the tutorial, \nwhere this games controls will be explained. ");
		break;
	case 2:
		
		draw_sprite(spr_tile_grass,image_index,10.5*global.gridPointSize,4.5*global.gridPointSize);
		draw_sprite(spr_gridpoint1,image_index,10*global.gridPointSize,4*global.gridPointSize);
		
		draw_text(room_width/2,room_height/2,"The map is divided into squares. \nBy clicking on one that is not devoid of life, \nan editor window will appear. ");
		draw_sprite_ext(spr_arrow,image_index,335,165,0.2,0.2,-73.44,c_white,1);
		draw_sprite_ext(spr_arrowline,image_index,390,350,1.3,0.2,-73.44,c_white,1);
		draw_sprite_ext(spr_arrowline,image_index,390,350,0.2,0.2,-73.44,c_white,1);
		break;
	case 3:
		
		draw_sprite(spr_tile_grass,image_index,10.5*global.gridPointSize,4.5*global.gridPointSize);
		draw_sprite(spr_gridpoint1,image_index,10*global.gridPointSize,4*global.gridPointSize);
		draw_sprite_ext(spr_gridpoint_tlayer,image_index,10*global.gridPointSize,4*global.gridPointSize,1,1,0,c_white,0.4);
		
		editboxWidth=(max(string_width("Rabbits"),sprite_get_width(spr_plusbutton)*2+10)+max(string_width("Wolves"),sprite_get_width(spr_plusbutton)*2+10))+50;
		editboxHeight=sprite_get_height(spr_editboxB_bars)+20+string_height("Rabbits")+sprite_get_height(spr_plusbutton);
		draw_sprite_ext(spr_editboxB,image_index,room_width-editboxWidth-10,10,editboxWidth/sprite_get_width(spr_editboxB),editboxHeight/sprite_get_height(spr_editboxB),0,c_white,1);
		draw_sprite_ext(spr_editboxB_bars,image_index,room_width-editboxWidth,20,(editboxWidth-20)/sprite_get_width(spr_editboxB_bars),1,0,c_white,1);
		draw_set_color(c_black);
		draw_text(room_width-editboxWidth+max(string_width("Rabbits")/2,sprite_get_width(spr_plusbutton)+5)+10,5+editboxHeight-string_height("Rabbits")/2-sprite_get_height(spr_plusbutton),"Rabbits");	
		draw_text(room_width-editboxWidth+20+max(string_width("Rabbits"),sprite_get_width(spr_plusbutton)*2+10)+max(string_width("Wolves")/2,sprite_get_width(spr_plusbutton)+5),5+editboxHeight-string_height("Rabbits")/2-sprite_get_height(spr_plusbutton),"Wolves");
		draw_sprite_ext(spr_seperator,image_index,room_width-editboxWidth+max(string_width("Rabbits"),sprite_get_width(spr_plusbutton)*2+10)+14,5+editboxHeight-string_height("Rabbits")-sprite_get_height(spr_plusbutton),1,(string_height("Rabbits")+sprite_get_height(spr_plusbutton)+2)/sprite_get_height(spr_seperator),0,c_white,1);
		draw_sprite_ext(spr_bar_red,image_index,room_width-editboxWidth+max(string_width("Rabbits")/2,sprite_get_width(spr_plusbutton)+5)+10,20+sprite_get_height(spr_editboxB_bars),1,2/3,0,c_white,1);
		draw_sprite_ext(spr_bar_blue,image_index,room_width-editboxWidth+20+max(string_width("Rabbits"),sprite_get_width(spr_plusbutton)*2+10)+max(string_width("Wolves")/2,sprite_get_width(spr_plusbutton)+5),20+sprite_get_height(spr_editboxB_bars),1,1/5,0,c_white,1);	
		draw_set_color(c_white);
		draw_sprite_ext(spr_plusbutton,image_index,room_width-editboxWidth+max(string_width("Rabbits")/2,sprite_get_width(spr_plusbutton)+5)+5-sprite_get_width(spr_plusbutton),5+editboxHeight-sprite_get_height(spr_plusbutton),1,1,0,c_white,0.1);	
		draw_sprite_ext(spr_minusbutton,image_index,room_width-editboxWidth+max(string_width("Rabbits")/2,sprite_get_width(spr_plusbutton)+5)+15,5+editboxHeight-sprite_get_height(spr_plusbutton),1,1,0,c_white,0.1);	
		draw_sprite_ext(spr_plusbutton,image_index,room_width-editboxWidth+max(string_width("Rabbits")/2,sprite_get_width(spr_plusbutton)+5)+5-sprite_get_width(spr_plusbutton)+10+max(string_width("Rabbits"),sprite_get_width(spr_plusbutton)*2+10),5+editboxHeight-sprite_get_height(spr_plusbutton),1,1,0,c_white,1);	
		draw_sprite_ext(spr_minusbutton,image_index,room_width-editboxWidth+max(string_width("Rabbits")/2,sprite_get_width(spr_plusbutton)+5)+15+10+max(string_width("Rabbits"),sprite_get_width(spr_plusbutton)*2+10),5+editboxHeight-sprite_get_height(spr_plusbutton),1,1,0,c_white,0.1);	
		draw_sprite(spr_closebutton,image_index,room_width-sprite_get_width(spr_closebutton)-20,20);	
		//x+selfWidth-sprite_get_width(spr_closebutton)-10,y+10
		
		draw_text(room_width/2,room_height/2,"The selected square will be highlighted \nand the editor window will show the population densities at that point as a bar graph. \n\nUse the plus and minus buttons under the names of the populations to increase or decrease them. \nIf a button is transparent this means that this action is not possible. ");
		draw_sprite_ext(spr_arrow,image_index,830,165,0.2,0.2,198.13,c_white,1);
		draw_sprite_ext(spr_arrowline,image_index,265,350,4.4,0.2,198.13,c_white,1);
		draw_sprite_ext(spr_arrowline,image_index,265,350,0.2,0.2,198.13,c_white,1);
		break;	
	case 4:
		
		draw_sprite(spr_tile_grass,image_index,10.5*global.gridPointSize,4.5*global.gridPointSize);
		draw_sprite(spr_gridpoint1,image_index,10*global.gridPointSize,4*global.gridPointSize);
		draw_sprite_ext(spr_gridpoint_tlayer,image_index,10*global.gridPointSize,4*global.gridPointSize,1,1,0,c_white,0.4);
		
		draw_set_color(c_black);		
		editboxHeight=2*(sprite_get_height(spr_textbox)+10)+string_height("Rabbits")+string_height("Wolves")+10;
		draw_sprite_ext(spr_editbox,image_index,room_width-sprite_get_width(spr_editbox)-10,10,1,editboxHeight/sprite_get_height(spr_editbox),0,c_white,1);		
		draw_text(room_width-sprite_get_width(spr_editbox)+sprite_get_width(spr_textbox)/2-5,20+string_height("Rabbits")/2,"Rabbits");
		draw_text(room_width-sprite_get_width(spr_editbox)+sprite_get_width(spr_textbox)/2-5,30+sprite_get_height(spr_textbox)+string_height("Rabbits")+string_height("Wolves")/2,"Wolves");	
		draw_sprite(spr_textbox,image_index,room_width-sprite_get_width(spr_editbox)+sprite_get_width(spr_textbox)/2-5,sprite_get_height(spr_textbox)/2+string_height("Rabbits")+20);
		draw_sprite(spr_textbox,image_index,room_width-sprite_get_width(spr_editbox)+sprite_get_width(spr_textbox)/2-5,3*sprite_get_height(spr_textbox)/2+string_height("Rabbits")+string_height("Wolves")+30);
		draw_text(room_width-sprite_get_width(spr_editbox)+sprite_get_width(spr_textbox)/2-5,sprite_get_height(spr_textbox)/2+string_height("Rabbits")+20,"600");
		draw_text(room_width-sprite_get_width(spr_editbox)+sprite_get_width(spr_textbox)/2-5,3*sprite_get_height(spr_textbox)/2+string_height("Rabbits")+string_height("Wolves")+30,"100");	
		draw_sprite(spr_closebutton,image_index,room_width-sprite_get_width(spr_closebutton)-15,15);		
		draw_set_color(c_white);
		
		draw_text(room_width/2,room_height/2,"There exits a different version of the editor window, \nwhich shows the actual population numbers, and lets you modify them directly. \n\nYou can decide which version to use in the options menu.");
		draw_sprite_ext(spr_arrow,image_index,830,155,0.2,0.2,-126.12,c_white,1);
		draw_sprite_ext(spr_arrowline,image_index,695,340,1.6,0.2,-126.12,c_white,1);
		draw_sprite_ext(spr_arrowline,image_index,695,340,0.2,0.2,-126.12,c_white,1);
		break;	
	case 5:
		
		draw_sprite(spr_playbutton,image_index,27*global.gridPointSize,22*global.gridPointSize);
		
		draw_text(room_width/2,room_height/2,"In order to see how the populations evolve, \nyou can start the flow of time using the play/pause button. \n\nEditing the populations is not possible \nwhile time is flowing");
		draw_sprite_ext(spr_arrow,image_index,845,675,0.2,0.2,-250.71,c_white,1);
		draw_sprite_ext(spr_arrowline,image_index,740,375,2.2,0.2,-250.71,c_white,1);
		draw_sprite_ext(spr_arrowline,image_index,740,375,0.2,0.2,-250.71,c_white,1);
		break;
	case 6:
		
		draw_sprite(spr_monitor,image_index,global.gridPointSize,19*global.gridPointSize);
		
		positionsPopulation1[sprite_get_width(spr_monitor)-1]=0;
		positionsPopulation2[sprite_get_width(spr_monitor)-1]=0;
		for (i=0;i<sprite_get_width(spr_monitor);i++){
			positionsPopulation1[i]=floor((0.6+sin(i/50)/5)*sprite_get_height(spr_monitor));
			positionsPopulation2[i]=floor((0.4+cos(i/20)/6)*sprite_get_height(spr_monitor));
		}
		for(i=0;i<sprite_get_width(spr_monitor);i++){
			draw_sprite(spr_reddot2,image_index,global.gridPointSize+i,19*global.gridPointSize+sprite_get_height(spr_monitor)-positionsPopulation1[i]);//*visualRatioPopulation1);
			draw_sprite(spr_bluedot2,image_index,global.gridPointSize+i,19*global.gridPointSize+sprite_get_height(spr_monitor)-positionsPopulation2[i]);//*visualRatioPopulation2);
		}

		draw_text(room_width/2,room_height/2,"Lastly there is the monitor window. \n\nYou can use it to keep track of the total population over all squares \nand how they evolve over time.");
		draw_sprite_ext(spr_arrow,image_index,180,600,0.2,0.2,53.62,c_white,1);
		draw_sprite_ext(spr_arrowline,image_index,320,410,1.6,0.2,53.62,c_white,1);
		draw_sprite_ext(spr_arrowline,image_index,320,410,0.2,0.2,53.62,c_white,1);
		break;
	case 7:
	
		draw_text(room_width/2,room_height/2,"The game will be lost if any of populations grow too large or small. \n\nTo win you have to balance the populations such that they will remain stable \nand just let time flow until the stability is confirmed.");
		break;
	case 8:
	
		draw_text(room_width/2,room_height/2,"These are all the controls. \n\nEnjoy the game. ");
		break;	
	default:
		show_message("error in tutorial draw function");	
}


