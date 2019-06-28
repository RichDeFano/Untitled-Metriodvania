/// @description Insert description here
// You can write your code in this editor
x = obj_save.x;
y = obj_save.y;
instance_create_layer(obj_save.x,obj_save.y,"ObjOverPlayer",obj_warpGlow);
sprite_index = spr_player_warp;
image_speed = 0.6;
image_index = 0;
grav = 0.2;
move_lock = true;