// roda uma vez quando o jogo abre 
global.flags = {};
global.dialogue_closed_at = -1000;   // quando a última conversa fechou

/// marca um progresso se terminado
function quest_set(_flag) {
    if (_flag == "") return;
    var _ja_tinha = quest_get(_flag);   // só mostra a imagem 1 vez
    global.flags[$ _flag] = true;

    // libera peixeira
    if (_flag == "peixeira") global.peixeira = true;

    // libera tonico
    if (_flag == "tonico") global.tonico = true;

    // imagem da cutscene
    if (_flag == "cutscene" && !_ja_tinha) {
        global.cutscene = true;
        instance_create_depth(0, 0, -9000, obj_cutscene);
    }
}

/// verifica se teve progresso
function quest_get(_flag) {
    if (_flag == "") return true;
    return variable_struct_exists(global.flags, _flag) && global.flags[$ _flag];
}