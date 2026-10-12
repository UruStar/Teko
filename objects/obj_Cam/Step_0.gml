if not instance_exists(target_) exit;

x = lerp(x, target_.x, 0.1); //acompanha horizontalmente
#region margem vertical
var margem_y = 64; //margem

if (target_.y < y - margem_y) { // se está mais alto doq a margem do pulo
    y = lerp(y, target_.y + margem_y, 0.1);//camera acompanha pra cima
}

else if (target_.y > y + margem_y) { //se ta pra baixo da margem do pulo
    y = lerp(y, target_.y - margem_y, 0.1); //camera acompanha pra baixo
}

#endregion
// mudança real.
camera_set_view_pos(view_camera[0], x - width_/2, y - height_/2);



#region nao deixar a camera ir embora

var cam_x = x - width_ / 2;//onde ela QUER estar
var cam_y = y - height_ / 2;

//seta q o x e o y da camera nao seram menores q 0 e nem maiores q sala - camera 
cam_x = clamp(cam_x, 0, room_width - width_);
cam_y = clamp(cam_y, 0, room_height - height_);
//ai ela nao cria espaço vazio

//mudança real
camera_set_view_pos(view_camera[0], cam_x, cam_y);

#endregion