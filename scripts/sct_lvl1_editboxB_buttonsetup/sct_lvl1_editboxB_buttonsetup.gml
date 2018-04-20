switch(i){
	case 0:
		newPlusButton.editable=false;
		newMinusButton.editable=false;
		break;
	case 1:
		newMinusButton.editable=false;
		break;
	default:
		show_message("There is an error in the editbox plusminus buttons setup");
}