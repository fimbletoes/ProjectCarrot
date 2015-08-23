pathClear = 1;

//Create a grid 32x32 
//grid = mp_grid_create(0,0,room_width/32,room_height/32,32,32);
//Create paths
//path=path_add(); 
//Create path and avoid obbject
//mp_grid_add_instances(path, obj_obstacle,true);
//Set endpoint, where the rabbit is going.


//path=path_add();
//Check to see if the path isn't blocked
if(!mp_grid_path(obj_grid.grid,obj_grid.path,x,y,argument0.x,argument0.y,true)) {
    show_debug_message("NO PATH!");
    path_clear_points(obj_grid.path)
    pathClear = 0; //path is blocked
} else {
    show_debug_message("FOUND A PATH!"); 
    pathClear = 1;
}

if(pathClear = 0) {
    show_debug_message("TO THE FENCE!");
    //mp_grid_add_instances(path, obj_obstacle,true);
    mp_grid_path(obj_grid.grid,obj_grid.path,x,y,obj_fence_perimeter.x,obj_fence_perimeter.y,true);
    path_start(obj_grid.path,spd,"",true)
    path_set_precision(obj_grid.path, 20);
} else {
    show_debug_message("TO THE VEGTABLES");
    //mp_grid_add_instances(path, obj_obstacle,true);
    mp_grid_path(obj_grid.grid,obj_grid.path,x,y,argument0.x,argument0.y,true);
    path_start(obj_grid.path,spd,"",true)
    path_set_precision(obj_grid.path, 20);
}

// set nearest variable - to fence 

 //mp_grid_path(grid,path,x,y,argument0.x,argument0.y,true); //argument defined in scr_enemy_entering
    //path_start(path,spd,"",true);