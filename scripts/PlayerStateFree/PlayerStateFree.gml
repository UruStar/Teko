function PlayerStateFree(){
get_input()

#region MOVIMENTAÇÃO
var move = key_right - key_left //define andar p esquerda ou direita

hspd = move * spd; // velocidade
vspd = vspd + grv; //aceleraçao de queda

//PULO
if place_meeting(x,y+1,obj_solid) and key_jump{
	vspd -=6.5;
}

#endregion

#region COLISÃO OBJ_SOLID
	if(place_meeting(x+hspd,y, obj_solid)){
		while(!place_meeting(x+sign(hspd),y,obj_solid)){ //verifica se nao vo bate na parede
		x = x + sign(hspd); //anda um pixel pra frente
		};
		hspd = 0; //freio
	};
	x = x + hspd; // passo p frente

	if(place_meeting(x,y+vspd, obj_solid)){ //verifica se vai bate no teto ou chao
		while(!place_meeting(x,y+sign(vspd),obj_solid)){
		y = y + sign(vspd); //sobe ou desce ate bater
		};
		vspd = 0; //freio vertical
	};
	y = y + vspd; //verticalidade
#endregion

#region TROCA DE SPRITES EM MOVIMENTO
if(hspd!=0){ //troca o lado q o bixo ta olhando 
	image_xscale = sign(hspd);
}

if(!place_meeting(x,y+1,obj_solid)){ //se nao tiver no chao
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