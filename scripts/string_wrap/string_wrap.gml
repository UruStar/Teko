///@description string_wrap
///@arg string
///@arg max_width
function string_wrap(argument0, argument1) {

    var str = argument0;
    var max_width = argument1;

    var result = "";
    var line = "";
    var word = "";
    var len = string_length(str);

    for (var i = 1; i <= len + 1; i++) {
        var ch = (i <= len) ? string_char_at(str, i) : " ";

        if (ch == " " || ch == "\n") {
            var test = (line == "") ? word : line + " " + word;

            if (string_width(test) > max_width && line != "") {
                result += line + "\n";
                line = word;
            } else {
                line = test;
            }
            word = "";

            if (ch == "\n") {
                result += line + "\n";
                line = "";
            }
        } else {
            word += ch;
        }
    }

    return result + line;
}