///scr_enemy_spawn
if choose(true, false) 
        {
            spawnX = random(room_width);
            spawnY = choose(0, room_height + 100);
        
        } else 
        {
            spawnX = choose(0, room_width + 100);
            spawnY = random(room_height);
        }
        
instance_create(spawnX,spawnY, choose(argument0));

rabbitCount +=1;