var _results = video_draw();
var _status = _results[0];

if (_status == 0) { //se tiver dando tudo certo
    var _surface = _results[1];
    draw_surface_stretched(_surface, 0, 0, display_get_gui_width(), display_get_gui_height());
}