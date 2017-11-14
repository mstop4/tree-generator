shader_set(shd_superjibby);

	shader_set_uniform_f(in[0],color_get_red(in_color[color_index.trunk])/maxChanValue,
								color_get_green(in_color[color_index.trunk])/maxChanValue,
								color_get_blue(in_color[color_index.trunk])/maxChanValue);
							   
	shader_set_uniform_f(in[1],color_get_red(in_color[color_index.leaf_light])/maxChanValue,
							color_get_green(in_color[color_index.leaf_light])/maxChanValue,
							color_get_blue(in_color[color_index.leaf_light])/maxChanValue);
							   
	shader_set_uniform_f(in[2],color_get_red(in_color[color_index.leaf_dark])/maxChanValue,
							color_get_green(in_color[color_index.leaf_dark])/maxChanValue,
							color_get_blue(in_color[color_index.leaf_dark])/maxChanValue);   

	shader_set_uniform_f(out[0],color_get_red(out_color[color_index.trunk])/other.maxChanValue,
								color_get_green(out_color[color_index.trunk])/other.maxChanValue,
								color_get_blue(out_color[color_index.trunk])/other.maxChanValue);	 
										
	shader_set_uniform_f(out[1],color_get_red(out_color[color_index.leaf_light])/other.maxChanValue,
								color_get_green(out_color[color_index.leaf_light])/other.maxChanValue,
								color_get_blue(out_color[color_index.leaf_light])/other.maxChanValue);
							   
	shader_set_uniform_f(out[2],color_get_red(out_color[color_index.leaf_dark])/other.maxChanValue,
								color_get_green(out_color[color_index.leaf_dark])/other.maxChanValue,
								color_get_blue(out_color[color_index.leaf_dark])/other.maxChanValue);
			
	draw_sprite(tree_spr,0,room_width/2,room_height);
				
shader_reset();