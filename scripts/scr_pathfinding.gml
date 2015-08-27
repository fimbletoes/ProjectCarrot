///scr_pathfinding
path=path_add();
mp_potential_path(path,argument0.x,argument0.y,spd,2,0);
show_debug_message("I GOT HERE"); 
path_set_precision(path, 4);
//mp_grid_path(obj_grid.grid,path,x,y,argument0.x,argument0.y,true);
path_start(path,spd,"",true)

/*if(pathClear = 0) {
    show_debug_message("TO THE FENCE!");
    //mp_grid_add_instances(path, obj_obstacle,true);
    mp_grid_path(obj_grid.grid,obj_grid.path,x,y,argument0.x,argument0.y,true);
    path_start(obj_grid.path,spd,"",true)
    path_set_precision(obj_grid.path, 20);
} else {
    show_debug_message("TO THE VEGTABLES");
    //mp_grid_add_instances(path, obj_obstacle,true);
    mp_grid_path(obj_grid.grid,obj_grid.path,x,y,argument0.x,argument0.y,true);
    path_start(obj_grid.path,spd,"",true)
    path_set_precision(obj_grid.path, 20);
}
