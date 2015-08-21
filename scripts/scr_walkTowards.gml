//Create a grid 32x32 
grid = mp_grid_create(0,0,room_width/32,room_height/32,32,32);
//Create path
path=path_add(); 
//Create path and avoid obbject
mp_grid_add_instances(path, obj_obstacle,true);
//Set endpoint, where the rabbit is going.
mp_grid_path(grid,path,x,y,argument0.x,argument0.y,true);
path_start(path,spd,"",true);