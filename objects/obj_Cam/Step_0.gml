if (!instance_exists(target_)) exit;

// acompanha o player horizontalmente
x = lerp(x, target_.x, 0.1);


#region MARGEM VERTICAL

var margem_y = 64;

// palyer acima da margem
if (target_.y < y - margem_y) {
    y = lerp(y, target_.y + margem_y, 0.1);
}

// player abaixo da margem
else if (target_.y > y + margem_y) {
    y = lerp(y, target_.y - margem_y, 0.1);
}

#endregion


#region LIMITE DA CAMERA

// posião desejada da camera
var cam_x = x - width_ / 2;
var cam_y = y - height_ / 2;

// não mostrar as aréas de fora
cam_x = clamp(cam_x, 0, max(0, room_width - width_));
cam_y = clamp(cam_y, 0, max(0, room_height - height_));

// posição final
camera_set_view_pos(view_camera[0], cam_x, cam_y);

#endregion