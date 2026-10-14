if (distance_to_object(obj_player) < interact_range
    && keyboard_check_pressed(ord("E"))
    && !instance_exists(oTextBox)) {

    create_textbox(text, speakers);
}