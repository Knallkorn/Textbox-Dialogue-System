var camheight = camera_get_view_height(view_enabled);
var camwidth = camera_get_view_width(view_enabled);

var pagefinal

if is_array(text)
{
	pages = array_length_1d(text);
	pagefinal = text[currentpage];
}
else
{
	pagefinal = text;
}

pagechar = string_length(pagefinal);

var textfinal = string_copy(pagefinal, 1, charcount);

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

draw_sprite(avatar,0,avatarx,avatary);

#endregion

#region Text

var textx = 0 + xoffset + sprite_get_width(sidesprite) + textxoffset + sprite_get_width(avatar);
var texty = camheight - yoffset - sprite_get_height(sidesprite) + textyoffset;

draw_set_color(c_white);
draw_set_font(font);
draw_text_ext(textx, texty, textfinal, 10, midwidth);

#endregion