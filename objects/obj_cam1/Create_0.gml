target_ = obj_player;
width_  = camera_get_view_width(view_camera[0]);
height_ = camera_get_view_height(view_camera[0]);

if (!instance_exists(target_)) exit;

// camero direto no player
x = target_.x;
y = target_.y;

// calcula a posição inicial
var cam_x = x - width_ / 2;
var cam_y = y - height_ / 2;

//  limites da room
cam_x = clamp(cam_x, 0, max(0, room_width - width_));
cam_y = clamp(cam_y, 0, max(0, room_height - height_));

camera_set_view_pos(view_camera[0], cam_x, cam_y);