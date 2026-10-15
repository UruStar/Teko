if (!variable_global_exists("game_width")) {
    global.game_width  = display_get_gui_width();
    global.game_height = display_get_gui_height();
}

box      = sTextBox;
frame    = sPortarit_frame;
portrait = sPortraits;
portrait_sprites = [sPortraits];
namebox  = sNameBox;

box_width       = sprite_get_width(box);
box_height      = sprite_get_height(box);
port_width      = sprite_get_width(frame);   // usa o tamanho da moldura
port_height     = sprite_get_height(frame);
namebox_width   = sprite_get_width(namebox);
namebox_height  = sprite_get_height(namebox);

port_x = (global.game_width - box_width - port_width) * 0.5;
port_y = (global.game_height * 0.98) - port_height;
box_x  = port_x + port_width;
box_y  = port_y;
namebox_x = port_x;
namebox_y = box_y - namebox_height;

x_buffer = 20;
y_buffer = 16;
text_x = box_x + x_buffer;
text_y = box_y + y_buffer;
name_text_x = namebox_x + (namebox_width / 2);
name_text_y = namebox_y + (namebox_height / 2);
text_max_width = box_width - (2 * x_buffer);

portrait_index = 0;
counter = 0;
pause = false;
skip_first = true;

text[0] = "Seila carai";
page = 0;
name = "Zacki";
names = [name];
portraits = [0];

interact_key = ord("E");

text_col = c_white;
name_text_col = c_white;
font = fnt_dialogue;

draw_set_font(font);
text_height = string_height("M");
text_wrapped = string_wrap(text[page], text_max_width);
str_len = string_length(text_wrapped);

global.activate_portrait = true;

flag_to_give = "";