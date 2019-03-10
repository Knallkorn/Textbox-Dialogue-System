var camheight = camera_get_view_height(view_enabled);
var camwidth = camera_get_view_width(view_enabled);

var pagefinal, avatarfinal

if is_array(text)
{
	pages = array_length_1d(text);
	pagefinal = text[currentpage];
	avatarfinal = avatar[currentpage];
}
else
{
	pagefinal = text;
	avatarfinal = avatar;
}

pagechar = string_length(pagefinal);

#region Draw Box

// Left side
draw_sprite_ext(sidesprite, 0, 0 + xoffset, camheight - yoffset, 1, 1, 0, c_white, 1);

// Right side
draw_sprite_ext(sidesprite, 0, camwidth - xoffset, camheight - yoffset, -1, 1, 0, c_white, 1);

// Mid section
var midwidth = camwidth - (xoffset * 2) - (sprite_get_width(sidesprite) * 2);
draw_sprite_ext(midsprite, 0, 0 + xoffset + (sprite_get_width(sidesprite)), camheight - yoffset, midwidth, 1, 0, c_white, 1);

#endregion

#region Draw Avatar

var avatarx = 0 + xoffset + sprite_get_width(sidesprite);
var avatary = camheight - yoffset - (sprite_get_height(sidesprite) / 2) + 1;

draw_sprite(avatarfinal,0,avatarx,avatary);

#endregion

#region Text

var textx = 0 + xoffset + sprite_get_width(sidesprite) + textxoffset + sprite_get_width(avatarfinal);
var texty = camheight - yoffset - sprite_get_height(sidesprite) + textyoffset;
var textend = midwidth - xoffset - sprite_get_width(sidesprite) - textxoffset - sprite_get_width(avatarfinal);

draw_set_font(font);
col = defaultcol;

var xx = textx, yy = texty, letter = "", lineend = textend + textx, nextletter, lastletter;

for(var currentchar = 1; currentchar < (charcount + 1); currentchar += 1;)
{
	letter = string_copy(pagefinal,currentchar,1);
	nextletter = string_copy(pagefinal,currentchar + 1,1);
	lastletter = string_copy(pagefinal,currentchar - 1,1);
	
	if letter = "`"
	{
		switch (nextletter)
		{
			case "*": col = defaultcol; break;
			case "a": col = c_aqua; break;
			case "r": col = c_red; break;
			case "f": col = c_fuchsia; break;
			case "o": col = c_orange; break;
		}
		letter = "";
	}
	else
	{
	if lastletter = "`"
	{
		letter = "";	
	}
	draw_text_colour(xx,yy,letter,col,col,col,col,1);
	
	if xx < lineend
	{
		xx += string_width(letter);
	}
	else
	{
		yy += textspace;
		xx = textx;
	}
	
	var charstoend = string_length(pagefinal) - currentchar,nxtspc = string_pos(" ", string_copy(pagefinal,currentchar + 1,charstoend));
	
	if (xx + string_width(string_copy(pagefinal,currentchar,nxtspc))) > lineend
	{
		yy += textspace;
		xx = textx;
	}
	}
}

#endregion