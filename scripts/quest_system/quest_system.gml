// roda uma vez quando o jogo abre 
global.flags = {};
global.dialogue_closed_at = -1000;   // quando a última conversa fechou

/// marca um progresso como feito
function quest_set(_flag) {
    if (_flag == "") return;
    global.flags[$ _flag] = true;

    // marcadores que liberam itens/habilidades
    if (_flag == "peixeira") global.peixeira = true;
	
    // marcadores que liberam itens/habilidades
    if (_flag == "tonico") global.tonico = true;
}

/// pergunta se um progresso já foi feito
function quest_get(_flag) {
    if (_flag == "") return true;
    return variable_struct_exists(global.flags, _flag) && global.flags[$ _flag];
}