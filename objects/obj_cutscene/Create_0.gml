video_open("final.mp4");
video_enable_loop(false);
skip_first = true;   // ignora o E que fechou a conversa do Paje
terminou = false;

encerrar = function() {
    if (terminou) exit;
    terminou = true;
    video_close();
    global.cutscene = false;                    // libera o player
    global.dialogue_closed_at = current_time;   // evita fala do Paje na hora
    instance_destroy();
};