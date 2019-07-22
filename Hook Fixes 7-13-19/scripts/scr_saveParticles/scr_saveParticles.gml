global.statusBurning = false;
global.statusPoison =  false;
global.statusDazed =  false;
global.statusCursed =  false;
global.statusFrozen =  false;
global.statusSlowed =  false;
global.statusEffects = 0;

//obj_Player.canSave = false;
for (var i = 8; i > 0; i--)
{
	instance_create_layer(obj_save.x,obj_save.y,"ObjOverPlayer",obj_saveParticle);
}

obj_Player.canSave = false;