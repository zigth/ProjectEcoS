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

tilemap_set(global.layerSand,global.tileSandUL,2*i,2*j);
tilemap_set(global.layerSand,global.tileSandUR,2*i+1,2*j);
tilemap_set(global.layerSand,global.tileSandDL,2*i,2*j+1);
tilemap_set(global.layerSand,global.tileSandDR,2*i+1,2*j+1);

if AdjacentUL {
	tilemap_set(global.layerSand,global.tileSandCUL,2*i,2*j);
}
if AdjacentUR {
	tilemap_set(global.layerSand,global.tileSandCUR,2*i+1,2*j);
}
if AdjacentDL {
	tilemap_set(global.layerSand,global.tileSandCDL,2*i,2*j+1);
}
if AdjacentDR {
	tilemap_set(global.layerSand,global.tileSandCDR,2*i+1,2*j+1);
}

if AdjacentU {
	tilemap_set(global.layerSand,global.tileSandSUL,2*i,2*j);
	tilemap_set(global.layerSand,global.tileSandSUR,2*i+1,2*j);
}
if AdjacentR {
	tilemap_set(global.layerSand,global.tileSandSRU,2*i+1,2*j);
	tilemap_set(global.layerSand,global.tileSandSRD,2*i+1,2*j+1);
}
if AdjacentD {
	tilemap_set(global.layerSand,global.tileSandSDL,2*i,2*j+1);
	tilemap_set(global.layerSand,global.tileSandSDR,2*i+1,2*j+1);
}
if AdjacentL {
	tilemap_set(global.layerSand,global.tileSandSLU,2*i,2*j);
	tilemap_set(global.layerSand,global.tileSandSLD,2*i,2*j+1);
}

if (AdjacentU and AdjacentR) {
	tilemap_set(global.layerSand,global.tileSandSSUR,2*i+1,2*j);
}
if (AdjacentR and AdjacentD) {
	tilemap_set(global.layerSand,global.tileSandSSDR,2*i+1,2*j+1);
}
if (AdjacentD and AdjacentL) {
	tilemap_set(global.layerSand,global.tileSandSSDL,2*i,2*j+1);
}
if (AdjacentL and AdjacentU) {
	tilemap_set(global.layerSand,global.tileSandSSUL,2*i,2*j);
}


