/// @param x
/// @param y
/// @param length
/// @param direction
/// @param thickness
/// @param current_level

var _x = argument[0];
var _y = argument[1];
var _length = argument[2];
var _direction = argument[3];
var _thickness = argument[4];
var _current_level = argument[5];

if (_current_level > max_level)
	exit;

//var num_leaves_below = irandom_range(0,num_leaves);
var new_x = _x + lengthdir_x(_length, _direction);
var new_y = _y + lengthdir_y(_length, _direction);

// leaves below
if (_current_level >= max_level / 2)
{
	draw_leaves(_x, _y, new_x, new_y, _thickness, c_blue);
}

// wood
draw_set_color(c_red);
draw_line_width(_x, _y, new_x, new_y, _thickness);
	
if (_current_level == max_level)
{
	if (random(1) <= num_leaves)
		draw_sprite_ext(spr_leaf, 0,new_x, new_y, leaf_size, leaf_size, random(360), c_lime, with_leaves);
}

else
{
	draw_set_color(c_red);
	draw_circle(new_x, new_y, _thickness / 2, false);
}

// leaves above
if (_current_level >= max_level / 2)
{
	draw_leaves(_x, _y, new_x, new_y, _thickness, c_lime);
}

var new_dir_left = _direction + random_range(angle_offset-10,angle_offset+10);
var new_dir_right = _direction - random_range(angle_offset-10,angle_offset+10);

branch_params[counter] = ds_list_create();
ds_list_add(branch_params[counter],new_x,new_y,max(8, _length + random_range(-length_variance,length_variance)), new_dir_left, max(1, _thickness-thickness_reduction), _current_level+1);
ds_stack_push(my_stack,branch_params[counter]);
counter++;

branch_params[counter] = ds_list_create();
ds_list_add(branch_params[counter],new_x, new_y, max(8, _length + random_range(-length_variance,length_variance)), new_dir_right, max(1, _thickness-thickness_reduction), _current_level+1);
ds_stack_push(my_stack,branch_params[counter]);
counter++;