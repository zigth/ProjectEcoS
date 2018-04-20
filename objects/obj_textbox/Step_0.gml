/// @description textbox_keyinput_event
if selected{
	if(keyboard_check(vk_anykey) and string_length(text)<maxWidth){
		text = text+string(keyboard_string);
		keyboard_string="";
	}
	
	if(keyboard_check(vk_backspace) and !keyboard_check_pressed(vk_backspace) and delete_timer==2){
		text=string_delete(text,string_length(text),1);	
		delete_timer=0;
		keyboard_string="";
	}
	
	if(keyboard_check_pressed(vk_backspace)){
		text=string_delete(text,string_length(text),1);
		delete_timer=-4;
		keyboard_string="";
	}
	
	if (delete_timer!=2){
		delete_timer++;
	}
	
	
	if(keyboard_check(vk_enter)){
		script_execute(sctUpdatepopulation);
		//selected=false;
	}
	
}