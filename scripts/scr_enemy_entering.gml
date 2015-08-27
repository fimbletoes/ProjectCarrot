///scr_enemy_entering

state_text = 'entering';

// Pathfinding to vegtable
//scr_walkTowards(obj_carrot);

//Check for path to targetObject
if(!mp_grid_path(obj_grid.grid,path,x,y,targetObject.x,targetObject.y,true)) { // This does not only check if the path is available, it also sets it. No need to duplicate it later in the same Step.
    show_debug_message("NO PATH!");
    pathClear = 0; //path is blocked
    path_delete(path);
    //mp_grid_clear_all(grid);
    scr_pathfinding(obj_fence_perimeter);
} else {
    show_debug_message("FOUND A PATH!"); 
    pathClear = 1;
    scr_pathfinding(obj_carrot);
}







/*if(pathClear = 0) {
    // path isn't clear, calculate a new path
    show_debug_message("TO THE FENCE!");
    
} else {
    show_debug_message("TO THE VEGTABLES");
    // mp_grid_path(obj_grid.grid,path,x,y,argument0.x,argument0.y,true); //Unnessesary
    path_start(path,spd,0,true);
}


if (position_meeting(obj_carrot.x, obj_carrot.y,self)) {
    state = scr_enemy_pickup;
    obj_gameController.carrotsStolen += 1;
}

/* When rabbit meets carrot destroy iteself.
if (position_meeting(obj_carrot.x, obj_carrot.y,self)) {
    instance_destroy();
    obj_gameController.carrotsStolen += 1;
}*/
