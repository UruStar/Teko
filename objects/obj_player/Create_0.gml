window_set_size(1280,720);
gpu_set_tex_filter(false);

mask_index = spr_playerIdle; 
spd = 3;
vspd = 0;
hspd = 0;
grv = 0.3;
image_speed = 0.2;

state = playerState.FREE

enum playerState
{
	FREE
}
