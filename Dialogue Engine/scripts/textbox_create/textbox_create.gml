///@description textbox_draw
///@arg layer
///@arg text
///@arg avatar sprite

//Setup local variables

var txt = argument1;
var av = argument2;

//Transfer to textbox

with instance_create_layer(0, 0, argument0, o_textbox)
{
	text = txt;
	avatar = av;
}
