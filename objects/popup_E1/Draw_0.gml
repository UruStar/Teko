draw_self();

// alcance: usa o interact_range do objeto se existir, senão 24
var alcance = variable_instance_exists(id, "interact_range") ? interact_range : 24;

if (distance_to_object(obj_player) < alcance && !instance_exists(oTextBox)) {

    var esc = 0.5;   // tamanho do ícone: 1 = 64x64, 0.5 = 32x32, 0.25 = 16x16

    var w = sprite_get_width(spr_key_e)  * esc;
    var h = sprite_get_height(spr_key_e) * esc;

    var cx = round((bbox_left + bbox_right) / 2);
    var cy = round(bbox_top - 2 + sin(current_time / 250) * 1.5);

    var frame = floor(current_time / 300) mod sprite_get_number(spr_key_e);

    draw_sprite_ext(spr_key_e, frame,
        cx - w / 2 + sprite_get_xoffset(spr_key_e) * esc,
        cy - h     + sprite_get_yoffset(spr_key_e) * esc,
        esc, esc, 0, c_white, 1);
}