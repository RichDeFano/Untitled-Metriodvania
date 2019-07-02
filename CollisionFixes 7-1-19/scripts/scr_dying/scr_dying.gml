if (hp <= 0)
{
	instance_deactivate_all(false);
	room_goto(rm_GameOver);
}