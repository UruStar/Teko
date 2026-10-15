timer += 1;


if (timer < 30) { // faz o bgl surgir
    alpha = timer / 30;
} 

else if (timer < 150) {
    alpha = 1; // fica visivel p crl 
} 

else if (timer < 180) {
    alpha = (180 - timer) / 30; // vai sumindo
} 

else {
    instance_destroy(); //explode
}