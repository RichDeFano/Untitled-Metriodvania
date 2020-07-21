///movement and environment
grav = 0.2;
hsp = 0;
hsp_carry = 0;
vsp = 0;
movespeed = 4;
hspdash = 0;
jumps = 0;
if (global.doubleJumpUnlocked == false)
{
jumpsmax = 1;
}
if (global.doubleJumpUnlocked == true)
{
jumpsmax = 2;
}
jumpspeed_normal = 5.5; //5.5
jumpspeed = jumpspeed_normal
key_down = 0;
key_lastkey = 0;
////////Dashing and walljumping
move_lock = false; 
grounded = false;
dashing = false;
dying = false;
candash = true;
grounddashed = false;
playerCanWJ = false;
backwardsDash = false;
havePresetMoved = false;
canDashJump = false;
dashJumping = false;
extrahsp = 0;
extravsp = 0;
//physics
playerOnIce = false;
frict = 0;
playerInWater = false;
playerWaterStream = false;
/////Sword stuff
move_lock2 = false;
combocount = 0;
canattack = true;
attacking = false;
cancombo = false;
countering = false;

//
var numbOfHP = scr_countHPUpgrades();
maxhp = 20 + (numbOfHP);
hp = maxhp;
maxdashhp = 68;
dashhp = 68;
maxstamina = 100;
stamina = 100;
dmgblinking = false;
dmgfrozen = false;
haventtriggered = false;
canHook = false;
haveSet = false;
hooking = false;
setupComplete = false;
ropeLength = 0;
connected = false;
recoilSpeed=5;//set recoilSpeed as the speed you wish them to be flung backwards, reduce this if they recoil too fast
playerRecoil=-1;
playerStop=-1;

setRopeLength = (75) * (sprite_get_width(spr_hookChain));
tempNoMask = false;

canSave = true;
canShadow = true;
state = pState.normal;
startDrawingHook = false;