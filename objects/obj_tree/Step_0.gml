if (tween_delta <> 0)
{
	// end of tween
	if (tween_t >= 1)
	{
		tween_t = 1;
		tween_delta = 0;
		
		switch (current_season)
		{
			case season.spring:
			{
				out_color[color_index.trunk] = out_palette[season.spring,color_index.trunk];
				out_color[color_index.leaf_light] = out_palette[season.spring,color_index.leaf_light];
				out_color[color_index.leaf_dark] = out_palette[season.spring,color_index.leaf_dark];
				break;
			}
			
			case season.summer:
			{
				out_color[color_index.trunk] = out_palette[season.summer,color_index.trunk];
				out_color[color_index.leaf_light] = out_palette[season.summer,color_index.leaf_light];
				out_color[color_index.leaf_dark] = out_palette[season.summer,color_index.leaf_dark];
				break;
			}
			
			case season.fall:
			{
				out_color[color_index.trunk] = out_palette[season.fall,color_index.trunk];
				out_color[color_index.leaf_light] = out_palette[season.fall,color_index.leaf_light];
				out_color[color_index.leaf_dark] = out_palette[season.fall,color_index.leaf_dark];
				break;
			}
			
			case season.winter:
			{
				out_color[color_index.trunk] = out_palette[season.winter,color_index.trunk];
				out_color[color_index.leaf_light] = out_palette[season.winter,color_index.leaf_light];
				out_color[color_index.leaf_dark] = out_palette[season.winter,color_index.leaf_dark];
				break;
			}
		}
	}
	
	// tweening
	else
	{
		switch (current_season)
		{
			// fall -> winter and winter -> spring are surface tweens
			// spring -> summer and summer -> fall are shader tweens 
			case season.spring:
			{
				out_color[color_index.trunk] = out_palette[season.spring,color_index.trunk];															 
				out_color[color_index.leaf_light] = out_palette[season.spring,color_index.leaf_light];		   
				out_color[color_index.leaf_dark] = out_palette[season.spring,color_index.leaf_dark];
				break;
			}	
		
			case season.summer:
			{
				out_color[color_index.trunk] = interpolate_rgb(out_palette[season.spring,color_index.trunk], 
															   out_palette[season.summer,color_index.trunk],
															   tween_t);
															   
				out_color[color_index.leaf_light] = interpolate_rgb(out_palette[season.spring,color_index.leaf_light], 
															   out_palette[season.summer,color_index.leaf_light],
															   tween_t);
															   
				out_color[color_index.leaf_dark] = interpolate_rgb(out_palette[season.spring,color_index.leaf_dark], 
															   out_palette[season.summer,color_index.leaf_dark],
															   tween_t);
				break;
			}
			
			case season.fall:
			{
				out_color[color_index.trunk] = interpolate_rgb(out_palette[season.summer,color_index.trunk], 
															   out_palette[season.fall,color_index.trunk],
															   tween_t);
															   
				out_color[color_index.leaf_light] = interpolate_rgb(out_palette[season.summer,color_index.leaf_light], 
															   out_palette[season.fall,color_index.leaf_light],
															   tween_t);
															   
				out_color[color_index.leaf_dark] = interpolate_rgb(out_palette[season.summer,color_index.leaf_dark], 
															   out_palette[season.fall,color_index.leaf_dark],
															   tween_t);
				break;
			}
			
			case season.winter:
			{
				out_color[color_index.trunk] = out_palette[season.fall,color_index.trunk];															 
				out_color[color_index.leaf_light] = out_palette[season.fall,color_index.leaf_light];		   
				out_color[color_index.leaf_dark] = out_palette[season.fall,color_index.leaf_dark];
				break;
			}	
		}
	}
	
	tween_t += tween_delta;
}