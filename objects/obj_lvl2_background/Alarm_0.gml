/// @description Insert description here
// You can write your code in this editor

var lay_id = layer_get_id("tiles_island");
var map_id = layer_tilemap_get_id(lay_id);
var data = tilemap_get(map_id, 10, 10);
data = tile_set_flip(data, true);
tilemap_set(map_id, data, 0, 0);