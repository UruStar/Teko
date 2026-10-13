window_set_size(1280,720);
gpu_set_tex_filter(false);
window_set_fullscreen(true);

mask_index = spr_player_idle; 
spd = 3;
vspd = 0;
hspd = 0;
grv = 0.3;
image_speed = 0.2;
dash_time = 0;
dash_cooldown = 0;
state = playerState.FREE;
tonico = false;
enum playerState
{
	FREE
}
