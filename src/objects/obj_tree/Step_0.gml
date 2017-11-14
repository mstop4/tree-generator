if (tween_delta <> 0)
{
	// end of tween
	if (tween_t >= 1)
	{
		tween_t = 1;
		tween_delta = 0;
		
		out_color[color_index.trunk] = out_palette[current_palette,color_index.trunk];
		out_color[color_index.leaf_light] = out_palette[current_palette,color_index.leaf_light];
		out_color[color_index.leaf_dark] = out_palette[current_palette,color_index.leaf_dark];
	}
	
	// tweening
	else
	{
		out_color[color_index.trunk] = interpolate_rgb(out_palette[!current_palette,color_index.trunk], 
														out_palette[current_palette,color_index.trunk],
														tween_t);
															   
		out_color[color_index.leaf_light] = interpolate_rgb(out_palette[!current_palette,color_index.leaf_light], 
														out_palette[current_palette,color_index.leaf_light],
														tween_t);
															   
		out_color[color_index.leaf_dark] = interpolate_rgb(out_palette[!current_palette,color_index.leaf_dark], 
														out_palette[current_palette,color_index.leaf_dark],
														tween_t);	
	}
	
	tween_t += tween_delta;
}