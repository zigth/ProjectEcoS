/// @description Insert description here
// You can write your code in this editor

for (i=0;i<global.gridWidth;i++){
	for(j=0;j<global.gridHeight;j++){
		//value=global.backgroundtiles[i,j];
		switch (global.backgroundtiles[i,j]) {
			case 0:
				draw_sprite(spr_tile_water,image_index,(1/2+i)*global.gridPointSize,(1/2+j)*global.gridPointSize);
				break;
			case 1:
				draw_sprite(spr_tile_grass,image_index,(1/2+i)*global.gridPointSize,(1/2+j)*global.gridPointSize);
				break;
			case 20: case 21: case 22: case 23:
				draw_sprite(spr_tile_water,image_index,(1/2+i)*global.gridPointSize,(1/2+j)*global.gridPointSize);
				draw_sprite_ext(spr_tile_beach,image_index,(1/2+i)*global.gridPointSize,(1/2+j)*global.gridPointSize,1,1,90*(global.backgroundtiles[i,j] mod 10),c_white,1);
				break;
			case 30: case 31: case 32: case 33:
				draw_sprite(spr_tile_water,image_index,(1/2+i)*global.gridPointSize,(1/2+j)*global.gridPointSize);
				draw_sprite_ext(spr_tile_beach_corner1,image_index,(1/2+i)*global.gridPointSize,(1/2+j)*global.gridPointSize,1,1,90*(global.backgroundtiles[i,j] mod 10),c_white,1);
				break;
			case 40: case 41: case 42: case 43:
				draw_sprite(spr_tile_water,image_index,(1/2+i)*global.gridPointSize,(1/2+j)*global.gridPointSize);
				draw_sprite_ext(spr_tile_beach_corner2,image_index,(1/2+i)*global.gridPointSize,(1/2+j)*global.gridPointSize,1,1,90*((global.backgroundtiles[i,j]) mod 10),c_white,1);
				break;
			default:
				draw_text(x,y,"error");
		}
	}
}

i=11;
j=5;
draw_sprite(spr_deco_tree,image_index,(1/2+i)*global.gridPointSize,(1/2+j)*global.gridPointSize);
i=15;
j=8;
draw_sprite(spr_deco_tree,image_index,(1/2+i)*global.gridPointSize,(1/2+j)*global.gridPointSize);
i=15;
j=15;
draw_sprite(spr_deco_tree,image_index,(1/2+i)*global.gridPointSize,(1/2+j)*global.gridPointSize);
i=20;
j=12;
draw_sprite(spr_deco_tree,image_index,(1/2+i)*global.gridPointSize,(1/2+j)*global.gridPointSize);
i=11;
j=17;
draw_sprite(spr_deco_tree,image_index,(1/2+i)*global.gridPointSize,(1/2+j)*global.gridPointSize);
i=12;
j=12;
draw_sprite(spr_deco_tree,image_index,(1/2+i)*global.gridPointSize,(1/2+j)*global.gridPointSize);
i=9;
j=9;
draw_sprite(spr_deco_tree,image_index,(1/2+i)*global.gridPointSize,(1/2+j)*global.gridPointSize);
i=16;
j=11;
draw_sprite(spr_deco_tree,image_index,(1/2+i)*global.gridPointSize,(1/2+j)*global.gridPointSize);