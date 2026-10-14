///@description create_textbox
///@arg text
///@arg speakers
function create_textbox() {

    var tbox = instance_create_depth(0, 0, -10000, oTextBox);

    with (tbox) {
        text     = argument[0];
        speakers = argument[1];

        var len = array_length(text);
        for (var i = 0; i < len; i++) {
            names[i]     = speakers[i].name;
            portraits[i] = speakers[i].portrait_index;
        }
        event_perform(ev_other, ev_user1);
    }

    return tbox;
}