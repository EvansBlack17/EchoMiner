if (place_meeting(x, y, obj_silo)) onSilo = true;
if (place_meeting(x, y, obj_base)) onSilo = false;
if (onSilo) move_towards_point(obj_base.x, obj_base.y, speed);    
else move_towards_point(obj_silo.x, obj_silo.y, speed); 

image_angle = direction; 
