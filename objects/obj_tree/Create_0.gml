my_seed = 0;

// Execution Stack
my_stack = ds_stack_create();
branch_params[0] = 0;

// Properties
surf_width = room_width;
surf_height = room_height;
start_x = surf_width / 2;
start_y = surf_height-2;
start_angle = 90;
start_length = 24;
length_variance = 6;
start_thickness = 16;
thickness_reduction = 3;
leaf_spread = 4;
leaf_size = 1;
num_leaves = 2;
angle_offset = 20;
max_level = 5;

current_palette = 0;
tween_t = 1;
tween_delta = 0;

// Palette

out_palette[0, color_index.trunk] = rgb_to_bgr($804000);
out_palette[0, color_index.leaf_light] = rgb_to_bgr($00FF00);
out_palette[0, color_index.leaf_dark] = rgb_to_bgr($00C000);

out_palette[1, color_index.trunk] = rgb_to_bgr($804000);
out_palette[1, color_index.leaf_light] = rgb_to_bgr($FF8000);
out_palette[1, color_index.leaf_dark] = rgb_to_bgr($C06000);

out_color[color_index.trunk] = out_palette[current_palette,color_index.trunk];
out_color[color_index.leaf_light] = out_palette[current_palette,color_index.leaf_light];
out_color[color_index.leaf_dark] = out_palette[current_palette,color_index.leaf_dark];