// roda uma vez quando o jogo abre 
global.flags = {};
global.dialogue_closed_at = -1000;   // quando a última conversa fechou

/// marca um progresso se terminado
function quest_set(_flag) {
    if (_flag == "") return;
    global.flags[$ _flag] = true;

    // libera peixeira
    if (_flag == "peixeira") global.peixeira = true;
	
    // libera tonico
	if (_flag == "tonico") global.tonico = true;
}

/// verifica se teve progresso
function quest_get(_flag) {
    if (_flag == "") return true;
    return variable_struct_exists(global.flags, _flag) && global.flags[$ _flag];
}