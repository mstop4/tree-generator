/// @param branch_start_x
/// @param branch_start_y
/// @param branch_end_x
/// @param branch_end_y
/// @param branch_thickness
/// @param color

var _branch_start_x = argument[0];
var _branch_start_y = argument[1];
var _branch_end_x = argument[2];
var _branch_end_y = argument[3];
var _branch_thickness = argument[4];
var _color = argument[5];

if (num_leaves >= 1)
{
	for (var i=0; i<num_leaves; i++)
	{
		var tx = lerp(_branch_start_x, _branch_end_x, random(1));
		var ty = lerp(_branch_start_y, _branch_end_y, random(1));
		var t_dir = random_range(0,360)
		var t_xoffset = lengthdir_x(random_range(_branch_thickness / 2 + leaf_spread * 0.75, leaf_spread * 1.25),t_dir);
		var t_yoffset = lengthdir_y(random_range(_branch_thickness / 2 + leaf_spread * 0.75, leaf_spread * 1.25),t_dir);
			
		draw_sprite_ext(spr_leaf, 0,tx+t_xoffset, ty+t_yoffset, leaf_size, leaf_size, random(360), _color, with_leaves);
	}
}

else if (num_leaves > 0)
{
	if (random(1) <= num_leaves)
	{
		var tx = lerp(_branch_start_x, _branch_end_x, random(1));
		var ty = lerp(_branch_start_y, _branch_end_y, random(1));
		var t_dir = random_range(0,360)
		var t_xoffset = lengthdir_x(random_range(_branch_thickness / 2 + leaf_spread * 0.75, leaf_spread * 1.25),t_dir);
		var t_yoffset = lengthdir_y(random_range(_branch_thickness / 2 + leaf_spread * 0.75, leaf_spread * 1.25),t_dir);

		draw_sprite_ext(spr_leaf, 0,tx+t_xoffset, ty+t_yoffset, leaf_size, leaf_size, random(360), _color, with_leaves);
	}
}