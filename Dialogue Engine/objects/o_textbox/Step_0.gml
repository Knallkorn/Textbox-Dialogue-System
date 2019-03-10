if charcount < pagechar
{
	if keyboard_check_pressed(nextkey)
	{
		charcount = pagechar;
		exit
	}
	else
	{
		charcount += textspeed;
	}
}

if keyboard_check_pressed(nextkey) && charcount = pagechar
{
	if currentpage < pages - 1
	{
		currentpage += 1;
		charcount = 0;
	}
	else
	{
		instance_destroy();
	}
}

waveang += 2;