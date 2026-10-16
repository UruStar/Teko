var _status = video_get_status();

// Se o vídeo terminou ou o cara pulou
if (_status == video_status_closed || keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter)) {
    video_close(); // Fecha o vídeo e libera memória
    room_goto(caminhoPraia); // <-- COLOQUE AQUI O NOME DA SUA PRIMEIRA FASE!
}