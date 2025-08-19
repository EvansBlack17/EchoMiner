if(!onSilo)
{
	with (instance_place(x, y, obj_silo))
	{
		show_debug_message("1");
		var i;
	    for (i = 0; i < array_length(global.minerals); i++)
	    {
	    	if (variable_instance_exists(id, global.minerals[i]))
	    	{
	    		variable_instance_set(other.id, global.minerals[i], variable_instance_get(id, global.minerals[i]));
	    	}
	    }
		other.onSilo = true;
	}
}
if (onSilo)
{
	with (instance_place(x, y, obj_base))
	{
		var i, g;
	    for (i = 0; i < array_length(global.minerals); i++)
	    {
	    	if (variable_instance_exists(other.id, global.minerals[i]))
	    	{
		    	g = global.minerals[i];
		    	variable_global_set(g, variable_global_get(g)+variable_instance_get(other.id, global.minerals[i]));
	    		variable_instance_set(other.id, global.minerals[i], 0);
	    	}  
	    }
		other.onSilo = false;
	}
}
if (onSilo) move_towards_point(obj_base.x, obj_base.y, speed);    
else move_towards_point(obj_silo.x, obj_silo.y, speed); 
image_angle = direction; 