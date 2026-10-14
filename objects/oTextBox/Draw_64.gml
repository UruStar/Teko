// Balão
draw_sprite(box, 0, box_x, box_y);

// Retrato, moldura e caixa do nome
if (global.activate_portrait) {
    draw_sprite(frame, 0, port_x, port_y);               // fundo
    var sx = port_width  / sprite_get_width(portrait);
	var sy = port_height / sprite_get_height(portrait);
	draw_sprite_ext(portrait, portrait_index,
    port_x + sprite_get_xoffset(portrait) * sx,
    port_y + sprite_get_yoffset(portrait) * sy,
    sx, sy, 0, c_white, 1);

    // borda só existe se o sprite da moldura tiver 2 frames
    if (sprite_get_number(frame) > 1) {
        draw_sprite(frame, 1, port_x, port_y);
    }

    draw_sprite(namebox, 0, namebox_x, namebox_y);
}

draw_set_font(font);

// Nome
if (global.activate_portrait) {
    var c = name_text_col;
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text_color(name_text_x, name_text_y, name, c, c, c, c, 1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}

// Texto com efeito de digitação
var substr = string_copy(text_wrapped, 1, counter);
var tc = text_col;
draw_text_color(text_x, text_y, substr, tc, tc, tc, tc, 1);