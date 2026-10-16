///@description create_textbox
///@arg text
///@arg speakers

//le as informações q foram colocadas nas variaveis e cria a textbox conforme elas
function create_textbox() {

    var tbox = instance_create_depth(0, 0, -10000, oTextBox);

    with (tbox) {
        text     = argument[0];
        speakers = argument[1];

        var len = array_length(text);
        for (var i = 0; i < len; i++) {
            names[i]     = speakers[i].name;
            portraits[i] = speakers[i].portrait_index;

            // sprite do retrato q vc coloca na definição de variavel
            if (variable_instance_exists(speakers[i], "portrait_sprite")
                && sprite_exists(speakers[i].portrait_sprite)) {
                portrait_sprites[i] = speakers[i].portrait_sprite;
            } else {
                portrait_sprites[i] = sPortraits;
            }
        }
        event_perform(ev_other, ev_user1);
    }

    return tbox;
}