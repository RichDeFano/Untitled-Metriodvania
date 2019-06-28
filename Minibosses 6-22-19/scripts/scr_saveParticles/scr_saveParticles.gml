global.statusBurning = false;
global.statusPoison =  false;
global.statusDazed =  false;
global.statusCursed =  false;
global.statusFrozen =  false;
global.statusSlowed =  false;
global.statusEffects = 0;


for (var i = 5; i > 0; i--)
{
	instance_create_layer(obj_save.x,obj_save.y,"ObjOverPlayer",obj_saveParticle);
}