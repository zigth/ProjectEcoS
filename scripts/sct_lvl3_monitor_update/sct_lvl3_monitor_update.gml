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

if global.timeflow {
	for(i=1;i<sprite_get_width(spr_monitor);i++){
		positionsPopulation1[i-1]=positionsPopulation1[i];
		positionsPopulation2[i-1]=positionsPopulation2[i];
		positionsPopulation3[i-1]=positionsPopulation3[i];
		positionsPopulation4[i-1]=positionsPopulation4[i];
	}
}

