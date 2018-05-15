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
 
validity=false;

if (global.population1[gridvaluex,gridvaluey]>-1){
	validity=true;
}

if (global.population2[gridvaluex,gridvaluey]>-1){
	validity=true;
}

if (global.population3[gridvaluex,gridvaluey]>-1){
	validity=true;
}

if (global.population4[gridvaluex,gridvaluey]>-1){
	validity=true;
}

