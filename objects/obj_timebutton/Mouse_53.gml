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
 
if global.timeflow and clickcheck{
	global.timeflow=false;
	script_execute(sctWincheckReset);
	
	clickcheck=false;
	alarm[1]=1;
	global.timeflowrate=20;
}