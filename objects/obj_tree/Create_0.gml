my_seed = 0;

// Execution Stack
my_stack = ds_stack_create();
branch_params[0] = 0;

// Tree Properties
tree_spr = -1;
surf_width = room_width;
surf_height = room_height;
start_x = surf_width / 2;
start_y = surf_height-2;
start_angle = 90;
start_length = 48;
length_variance = 12;
start_thickness = 32;
thickness_reduction = 6;
leaf_spread = 8;
leaf_size = 2;
num_leaves = 2;
angle_offset = 20;
max_level = 5;

// Draw properties
current_palette = 0;
tween_t = 1;
tween_delta = 0;
maxChanValue = 255;

// Palettes

in_color[color_index.trunk] = rgb_to_bgr($FF0000);
in_color[color_index.leaf_light] = rgb_to_bgr($00FF00);
in_color[color_index.leaf_dark] = rgb_to_bgr($0000FF);

out_palette[0, color_index.trunk] = rgb_to_bgr($895432);
out_palette[0, color_index.leaf_light] = rgb_to_bgr($49d65a);
out_palette[0, color_index.leaf_dark] = rgb_to_bgr($24b347);

out_palette[1, color_index.trunk] = rgb_to_bgr($895432);
out_palette[1, color_index.leaf_light] = rgb_to_bgr($fba02b);
out_palette[1, color_index.leaf_dark] = rgb_to_bgr($f9781c);

out_color[color_index.trunk] = out_palette[current_palette,color_index.trunk];
out_color[color_index.leaf_light] = out_palette[current_palette,color_index.leaf_light];
out_color[color_index.leaf_dark] = out_palette[current_palette,color_index.leaf_dark];

// Shader uniforms
in[0] = shader_get_uniform(shd_superjibby,"u_in1");
in[1] = shader_get_uniform(shd_superjibby,"u_in2");
in[2] = shader_get_uniform(shd_superjibby,"u_in3");

out[0] = shader_get_uniform(shd_superjibby,"u_out1");
out[1] = shader_get_uniform(shd_superjibby,"u_out2");
out[2] = shader_get_uniform(shd_superjibby,"u_out3");

event_user(0);