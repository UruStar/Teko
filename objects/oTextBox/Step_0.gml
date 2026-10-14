if (skip_first) { skip_first = false; exit; }

// efeito de digitação (com pausa nas pontuações)
if (!pause && counter < str_len) {
    counter += 1;
    var ch = string_char_at(text_wrapped, counter);
    if (ch == "," || ch == "." || ch == "?" || ch == "!") {
        pause = true;
        alarm[1] = 15;
    }
}

if (keyboard_check_pressed(interact_key)) {
    if (counter < str_len) {
        counter = str_len;               // completa o texto na hora
    } else if (page < array_length(text) - 1) {
        page++;
        event_perform(ev_other, ev_user1);
    } else {
        instance_destroy();
    }
}