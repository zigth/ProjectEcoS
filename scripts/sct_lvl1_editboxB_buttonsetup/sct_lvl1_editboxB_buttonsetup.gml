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