function show_area_name(_name){

    if (!variable_global_exists("visited_areas")) {
        global.visited_areas = []; //salva as areas ja visitadas em array
    }
    
    
    if (!array_contains(global.visited_areas, _name)) { //se nao foi visitada
        array_push(global.visited_areas, _name); // anota na lista de visitadas
        
       //dale o bannerzao
        var _banner = instance_create_depth(0, 0, 0, obj_area_banner);
        _banner.area_text = _name;

	}

}