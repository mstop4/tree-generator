var _fix_seed = argument[0];
with_leaves = argument[1];

var temp_surf1 = surface_create(surf_width,surf_height);
var target_surf = surface_create(surf_width,surf_height);

// draw indexed coloured tree
surface_set_target(temp_surf1);
	draw_clear_alpha(c_black,0);
	
	if (_fix_seed)
		random_set_seed(my_seed);
	else
	{
		randomize();
		my_seed = random_get_seed();
	}
	
	// Do manual recursion stack
	ds_stack_empty(my_stack);
	counter = 0;
	
	branch_params[counter] = ds_list_create();
	ds_list_add(branch_params[counter],start_x,start_y,start_length,start_angle,start_thickness,0);
	ds_stack_push(my_stack,branch_params[counter]);
	counter++;
		
	while (!ds_stack_empty(my_stack))
	{
		var cur_params = ds_stack_pop(my_stack);
		draw_branch(cur_params[| 0],
					cur_params[| 1],
					cur_params[| 2],
					cur_params[| 3],
					cur_params[| 4],
					cur_params[| 5]);
		ds_list_destroy(cur_params);
	}
surface_reset_target();

surface_set_target(target_surf);
	draw_clear_alpha(c_black,0);

	// Draw outline
	draw_surface_ext(temp_surf1,1,0,1,1,0,c_black,1);
	draw_surface_ext(temp_surf1,0,1,1,1,0,c_black,1);
	draw_surface_ext(temp_surf1,-1,0,1,1,0,c_black,1);
	draw_surface_ext(temp_surf1,0,-1,1,1,0,c_black,1);
	draw_surface(temp_surf1,0,0);
surface_reset_target();

var spr_tree = sprite_create_from_surface(target_surf,0,0,surf_width,surf_height,false,false,surf_width/2,surf_height-1);

surface_free(temp_surf1);
surface_free(target_surf);

return spr_tree;