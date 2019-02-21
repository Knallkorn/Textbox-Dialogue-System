if keyboard_check_pressed(nextkey) && currentpage < (pages - 1)
{
	currentpage += 1;
	charcount = 0;
}

if charcount < pagechar
{
	charcount += 0.5;
}