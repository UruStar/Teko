//ver se esta colidindo

var player = place_meeting(x, y, obj_player);

var interagir = keyboard_check_released(ord("E"));

if(player && interagir){
	var tran = instance_create_layer(0, 0, layer, obj_transicao);
	tran.destino = destino;
	tran.destino_x = destino_x;
	tran.destino_y = destino_y;
}
