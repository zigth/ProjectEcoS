/// @description Insert description here
// You can write your code in this editor
if (clickcheck and editable){
	if (currentEditboxB.population!=population){
		currentEditboxB.population=population;
		currentEditboxB.pluscounter=0;
		currentEditboxB.minuscounter=0;
	}
	currentEditboxB.minuscheck=true;
	
	clickcheck=false;
	alarm[0]=1;
}