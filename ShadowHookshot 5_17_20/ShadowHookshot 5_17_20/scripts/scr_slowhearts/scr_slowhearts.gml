/*



/////////////ADDING 8 HEARTS////////////
if global.slowhearts2 = true
{
global.hp += 1
sound_play(global.SHeartReplenish)
}

if global.hp >= global.maxhp
{
global.slowhearts2 = false
global.hp = global.maxhp
}
/////////////ADDING 8 HEARTS////////////
if global.slowhearts = true
{
global.hp += 1
global.counter += 1
sound_play(global.SHeartReplenish)
}

if global.counter = 32 or global.hp >= global.maxhp
{
global.slowhearts = false
global.counter = 0
global.hp = global.maxhp
}
///////////////////////////////ADDING 5 HEARTS
if global.slowhearts1 = true
{
global.hp += 1
global.counter1 += 1
sound_play(global.SHeartReplenish)
}

if global.counter1 = 20 or global.hp >= global.maxhp
{
global.slowhearts1 = false
global.counter1 = 0
global.hp = global.maxhp
}
//////////////////////////////ADDING ALL MAGIC////////////////////
if global.slowmagic = true and global.maxmagic > global.magic
{
global.magic += 1
global.counter2 += 1
if global.ragemode = false
{
sound_play(global.SMagicGain)
}
}

if global.counter2 = 99999 or global.magic >= global.maxmagic
{
global.magic = global.maxmagic
global.slowmagic = false
global.counter2 = 0
}
///////////////////ADDING HALF MAGIC/////////////////
if global.slowmagic1 = true and global.maxmagic > global.magic
{
global.magic += 1
global.counter3 += 1
sound_play(global.SMagicGain)
}

if global.maxmagic = 28
{
if global.counter3 = 14 or global.magic >= global.maxmagic
{
global.magic = global.maxmagic
global.slowmagic1 = false
global.counter3 = 0
}
}

if global.maxmagic > 56
{
if global.counter3 = 28 or global.magic >= global.maxmagic
{
global.magic = global.maxmagic
global.slowmagic1 = false
global.counter3 = 0
}
}
/////////////////////EXITING EARLY CRAP
if global.maxhp <= global.hp and (global.slowhearts = true or global.slowhearts1 = true)
{
exit
global.slowhearts = false
global.slowhearts1 = false
global.counter = 0
global.hp = global.maxhp
global.counter1 = 0
}

if global.maxmagic <= global.magic and (global.slowmagic = true or global.slowmagic1 = true)
{
exit
global.slowmagic = false
global.slowmagic1 = false
global.counter2 = 0
global.counter3 = 0
global.magic = global.maxmagic
}

