var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

// Aplica a transparência 
draw_set_alpha(alpha);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

// (Opcional) Escolha uma fonte bonita se tiver:
// draw_set_font(fnt_titulo);

//texto da area
draw_text(gui_w / 2, gui_h / 5.5, area_text);

draw_line_width(gui_w / 2 - 120, gui_h / 5.5 + 25, gui_w / 2 + 120, gui_h / 5.5 + 25, 2); //sublinhar

// SEMPRE resetar o alpha no final para não deixar o resto do jogo transparente!
draw_set_alpha(1);