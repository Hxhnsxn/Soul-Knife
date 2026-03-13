if(isPlayer)
{	
	event_inherited();
}
else
{
	speed = 1.4
	direction = point_direction(x, y, global.currentPlayer.x, global.currentPlayer.y)
	if(lengthdir_x(direction, direction) > 0)
	{
		image_xscale = -.5
		sprite_index = rat_side
	}
	else
	{
		image_xscale = .5
		sprite_index = rat_side
	}
	if(distance_to_object(global.currentPlayer) < 15)
	{
		attacking = true
		sprite_index = rat_attack
		frame_attack += 1
		//show_debug_message(frame_attack)
		if(frame_attack < 3)
		{
			speed = 0
			frame_attack++
		}
		else if(frame_attack == 4)
		{
			speed = 3
			frame_attack++
		}
		else
		{
			speed = 0
			frame_attack = 0
		}
		frame_attack++
	}
}
if(hp <= 0) {
	alarm[0] = 1;
	
}


