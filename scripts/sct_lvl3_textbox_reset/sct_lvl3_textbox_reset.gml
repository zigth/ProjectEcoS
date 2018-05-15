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

switch (population) {
		case -1:
			text=string(global.population1Reserve);
			break;
		case 1:
			text=string(global.population1[gridvaluex,gridvaluey]);
			break;
		case 2:
			text=string(global.population2[gridvaluex,gridvaluey]);
			break;
		case 3:
			text=string(global.population3[gridvaluex,gridvaluey]);
			break;
		case 4:
			text=string(global.population4[gridvaluex,gridvaluey]);
			break;	
		default:
			text="error no connected value";
}

