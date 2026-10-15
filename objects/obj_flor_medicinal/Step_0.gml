if (distance_to_object(obj_player) < interact_range
    && keyboard_check_pressed(ord("E"))
    && !instance_exists(oTextBox)) {

    quest_set(flag_collect);   // marca que pegou a flor
    instance_destroy();
}