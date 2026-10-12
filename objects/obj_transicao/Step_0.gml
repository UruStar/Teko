//ja mudei de room
if(mudei){
alpha -= 0.1;
}else{
alpha += 0.1;
}

//qnd alpha passa de 1 vai mudar de room

if (alpha >= 1){
	room_goto(destino);	
	
	obj_player.x = destino_x;
	obj_player.y = destino_y; 
}
