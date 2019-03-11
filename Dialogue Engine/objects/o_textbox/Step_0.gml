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

alpha = txtbox_wave(0, 0.75, 1, 0);

if r_hue != 360
{
	r_hue += 3;
}
else
{
	r_hue = 0;
}