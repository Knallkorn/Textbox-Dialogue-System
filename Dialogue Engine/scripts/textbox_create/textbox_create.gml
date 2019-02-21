///@description textbox_draw
///@arg textbox_side
///@arg textbox_mid
///@arg layer
///@arg x_offset
///@arg y_offset
///@arg text

//Setup local variables

var boxside = argument0;
var boxmid = argument1;
var xos = argument3;
var yos = argument4 + 1;
var txt = argument5;

//Transfer to textbox

with instance_create_layer(0, 0, argument2, o_textbox)
{
	sidesprite = boxside;
	midsprite = boxmid;
	xoffset = xos;
	yoffset = yos;
	text = txt;
}
