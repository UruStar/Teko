var _w = display_get_gui_width();
var _h = display_get_gui_height();

draw_set_color(c_black);
draw_rectangle(0, 0, _w, _h, false);
draw_set_color(c_white);

var _d = video_draw();
if (_d[0] == 0) draw_surface_stretched(_d[1], 0, 0, _w, _h);