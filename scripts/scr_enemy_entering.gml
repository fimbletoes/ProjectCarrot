///scr_enemy_entering

state_text = 'entering';

// Pathfinding to vegtable
scr_walkTowards(obj_carrot);

if (position_meeting(obj_carrot.x, obj_carrot.y,self)) {
    state = scr_enemy_pickup;
    obj_gameController.carrotsStolen += 1;
}

/* When rabbit meets carrot destroy iteself.
if (position_meeting(obj_carrot.x, obj_carrot.y,self)) {
    instance_destroy();
    obj_gameController.carrotsStolen += 1;
}*/
