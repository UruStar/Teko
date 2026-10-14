function PlayerStateFree(){
get_input()

if (instance_exists(oTextBox)) exit;

#region MOVIMENTAÇÃO
var move = key_right - key_left //define andar p esquerda ou direita
	if(global.tonico = true){
	    if (dash_cooldown > 0) dash_cooldown -= 1; //se for maior q 0, cai a cada frame o cd
    
	    if (place_meeting(x, y + 1, obj_solid) && dash_cooldown <= 0) { //se tiver no chao, e o cd for zero, reseta
	        can_dash = true;
	    }
   
	    if (key_dash && can_dash && dash_cooldown <= 0) {//se pressionou Q, pode dashar e n tem cooldown
	        can_dash = false;   // n pod dasha
	        dash_cooldown = 20; // seta cooldown
	        dash_time = 10;     // dura 10 frames

	        if (move != 0) { // seta a direçao do dash
	            dash_dir = move;
	        } else {
	            dash_dir = image_xscale; 
	        }
	    }
	    if (dash_time > 0) { //se tiver no dash
	        dash_time -= 1;        //timer vai caindo
	        hspd = dash_dir * 9;  // fica rapidao
	        vspd = 0;              // Gravidade zero pra deslizar no ar
	    } 
	    else {
			//se nao tiver dashando
		
			//movimentação padrao
	        hspd = move * spd;
	        vspd = vspd + grv;
	        // Pulo normal:
	        if (place_meeting(x, y + 1, obj_solid) && key_jump) {
	            vspd = -6.5;
	        }
	    }
	}else{
			//movimentação padrao
	        hspd = move * spd;
	        vspd = vspd + grv;
	        // Pulo normal:
	        if (place_meeting(x, y + 1, obj_solid) && key_jump) {
	            vspd = -6.5;
	        }
	}



//pogo 

		if(global.peixeira && !place_meeting(x,y+1,obj_solid) && key_pogo){
			
	
			if(place_meeting(x,y+20,obj_spikes)){
				vspd =-5.5;
			}
			can_dash = true;
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
	if(global.peixeira && !place_meeting(x,y+1,obj_solid) && key_pogo) //se tiver pogando
	{
		sprite_index = spr_player_pogo
		image_speed = 1;
		
		}else
		
	if(vspd > 0){ // e o player tiver caindo
		image_speed = 0.2;
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
	 if (dash_time > 0) {
		sprite_index = spr_player_dash //sprite dash
	 }

#endregion

}