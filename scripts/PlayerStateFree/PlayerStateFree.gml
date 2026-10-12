function PlayerStateFree(){
get_input()

#region movezadas
var move = key_right - key_left //define andar p esquerda ou direita

hspd = move * spd; // velocidade
vspd = vspd + grv; //aceleraçao de queda

if(place_meeting(x+hspd,y, obj_floor)){
	while(!place_meeting(x+sign(hspd),y,obj_floor)){ //verifica se nao vo bate na parede
	x = x + sign(hspd); //anda um pixel pra frente
	};
	hspd = 0; //freio
};
x = x + hspd; // passo p frente

if(place_meeting(x,y+vspd, obj_floor)){ //verifica se vai bate no teto ou chao
	while(!place_meeting(x,y+sign(vspd),obj_floor)){
	y = y + sign(vspd); //sobe ou desce ate bater
	};
	vspd = 0; //freio vertical
};
y = y + vspd; //verticalidade

//´PULO
if place_meeting(x,y+1,obj_floor) and key_jump{
	vspd -=6.5;
}

#endregion


#region troca de sprites em movimento
if(hspd!=0){ //troca o lado q o bixo ta olhando 
	image_xscale = sign(hspd);
}

if(!place_meeting(x,y+1,obj_floor)){ //se nao tiver no chao
	if(vspd > 0){ // e o player tiver caindo
		sprite_index = spr_player_fall // caindo, pq ta indo pra baixo
		
	}else{ //senao
		sprite_index = spr_player_jump //pulando
	}
}
else{ //se tiver no chao
	if(hspd!=0){ //se tiver andando
		sprite_index = spr_player_run //sprite correndo
	}else{//se nao
		sprite_index = spr_player_idle // parado
	}
}

#endregion

}