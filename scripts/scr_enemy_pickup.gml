///scr_enemy_pickup

state_text = 'pickup';

image_index = 1;

for(i=0;i<pickWaitTime;i++){
    show_debug_message("count " + string(i));    
}

if (i >= pickWaitTime) {
    state = scr_enemy_exiting;
}