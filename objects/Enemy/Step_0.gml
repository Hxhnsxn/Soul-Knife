key_left = keyboard_check(vk_left)
key_right = keyboard_check(vk_right)
key_up = keyboard_check(vk_up)
key_down = keyboard_check(vk_down)

if(isPlayer)
{
	if(hsp != 3)
	{
		hsp = 3
	}
	if(vsp != 3)
	{
		vsp = 3
	}
		if(key_left == 1 && key_right == 0)
	{
		hspeed = -hsp
	}
	else if(key_left == 0 && key_right == 1)
	{
		hspeed = hsp
	}
	else
	{
		hspeed = 0
	}

	if(key_up == 1 && key_down == 0)
	{
		vspeed = -vsp
	}
	else if(key_up == 0 && key_down == 1)
	{
		vspeed = vsp
	}
	else
	{
		vspeed = 0

	}
}
else
{
	hspeed = hsp
	vspeed = vsp
	timer += 1
	if(timer > timerStop)
	{
		hsp *= -1
		vsp *= -1
		timer = 0
	}
}