// As variáveis name, dialogue, portrait_sprite, portrait_index e
// interact_range vêm de "Definições de variáveis" (já existem aqui).

// divide o texto em páginas usando o "|"
text = string_split(dialogue, "|", true);
if (array_length(text) == 0) text = ["..."];

// uma entrada de "speaker" para cada página (todas apontam para este NPC)
speakers = [];
for (var i = 0; i < array_length(text); i++) {
    speakers[i] = id;
}