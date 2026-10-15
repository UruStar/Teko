if (distance_to_object(obj_player) < interact_range
    && keyboard_check_pressed(ord("E"))
    && !instance_exists(oTextBox)) {

    var liberado = quest_get(flag_need);                        // tem a permissão?
    var ja_deu   = (flag_give != "" && quest_get(flag_give));   // já deu o marcador antes?

    var linhas   = dialogue;
    var dar_flag = "";

    if (!liberado) {
        // sem permissão: usa a fala de "trancado", ou "..." se estiver vazia
        linhas = (dialogue_locked != "") ? dialogue_locked : "...";
    } else if (ja_deu && dialogue_done != "") {
        // já deu o marcador antes e tem fala de "já conversamos"
        linhas = dialogue_done;
        dar_flag = flag_done;      // NOVO: marcador dado quando essa conversa termina
    } else {
        dar_flag = flag_give;
    }

    // nunca deixa a fala vazia
    if (linhas == "") linhas = "...";

    var paginas = string_split(linhas, "|", true);
    if (array_length(paginas) == 0) paginas = ["..."];

    var falantes = [];
    for (var i = 0; i < array_length(paginas); i++) falantes[i] = id;

    var caixa = create_textbox(paginas, falantes);
    caixa.flag_to_give = dar_flag;
}