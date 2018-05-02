
global.editboxChoice=false;

instance_create_depth(0,0,0,obj_options_background);

instance_create_depth(x+(room_width-sprite_get_width(spr_button))/2-70,230,-2,obj_options_tickbox_editboxB);
instance_create_depth(x+(room_width-sprite_get_width(spr_button))/2-70,260,-2,obj_options_tickbox_editboxA);

instance_create_depth(x+(room_width-sprite_get_width(spr_button))/2,300,-2,obj_quitbutton);