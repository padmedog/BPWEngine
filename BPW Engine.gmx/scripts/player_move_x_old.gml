/*if instance_number(obj_wall1_verti) > 0
    with(obj_wall1_verti)
    {
        var halfwidth = sprite_width/2;
        if (rectangle_in_circle(x-halfwidth,y,x+halfwidth,y+sprite_height,obj_player.x+obj_player.xspeed,obj_player.y,8))
            if (rectangle_in_rectangle(y,z+zheight,y+sprite_height,z,obj_player.y-8,obj_player.z+obj_player.zheight-0.01,obj_player.y+8,obj_player.z+0.01))
                if (rectangle_in_rectangle(x-halfwidth,z+zheight,x+halfwidth,z,obj_player.xspeed+obj_player.x-8,obj_player.z+obj_player.zheight-0.01,obj_player.xspeed+obj_player.x+8,obj_player.z+0.01))
                    {
                        other.cantmove_x = true;
                    }
    }
if instance_number(obj_wall1_horiz) > 0
    with(obj_wall1_horiz)
    {
        var halfheight = sprite_height/2;
        if (rectangle_in_circle(x,y-halfheight,x+sprite_width,y+halfheight,obj_player.x+obj_player.xspeed,obj_player.y,8))
            if (rectangle_in_rectangle(y-halfheight,z+zheight,y+halfheight,z,obj_player.y-8,obj_player.z+obj_player.zheight-0.01,obj_player.y+8,obj_player.z+0.01))
                if (rectangle_in_rectangle(x,z+zheight,x+sprite_width,z,obj_player.xspeed+obj_player.x-8,obj_player.z+obj_player.zheight-0.01,obj_player.xspeed+obj_player.x+8,obj_player.z+0.01))
                {
                    other.cantmove_x = true;
                }
    }
if instance_number(par_floor) > 0
    with(par_floor)
        {
            
            if (rectangle_in_circle(x,y,x+sprite_width,y+sprite_height,obj_player.x+obj_player.xspeed,obj_player.y,8))
                if (rectangle_in_rectangle(y,floorz+z,y+sprite_height,floorz+z,obj_player.y-8,obj_player.z+obj_player.zheight-0.01,obj_player.y+8,obj_player.z+0.01))
                    if (rectangle_in_rectangle(x,floorz+z,x+sprite_width,floorz+z,obj_player.xspeed+obj_player.x-8,obj_player.z+obj_player.zheight-0.01,obj_player.x+obj_player.x+8,obj_player.z+0.01))
                    {
                        other.cantmove_x = true;
                    }
    }
if instance_number(obj_futuredoor_verti) > 0
    with(obj_futuredoor_verti)
    {
        var halfwidth = sprite_width/2;
        if (rectangle_in_circle(x-halfwidth,y,x+halfwidth,y+sprite_height,obj_player.x+obj_player.xspeed,obj_player.y,8))
            if (rectangle_in_rectangle(y,z+zheight,y+sprite_height,z,obj_player.y-8,obj_player.z+obj_player.zheight-0.01,obj_player.y+8,obj_player.z+0.01))
                if (rectangle_in_rectangle(x-halfwidth,z+zheight,x+halfwidth,z,obj_player.xspeed+obj_player.x-8,obj_player.z+obj_player.zheight-0.01,obj_player.xspeed+obj_player.x+8,obj_player.z+0.01))
                    {
                        other.cantmove_x = true;
                        opening = true;
                        alarm[0] = 90;
                    }
    }
if instance_number(obj_futuredoor_horiz) > 0
    with(obj_futuredoor_horiz)
    {
        var halfheight = sprite_height/2;
        if (rectangle_in_circle(x,y-halfheight,x+sprite_width,y+halfheight,obj_player.x+obj_player.xspeed,obj_player.y,8))
            if (rectangle_in_rectangle(y-halfheight,z+zheight,y+halfheight,z,obj_player.y-8,obj_player.z+obj_player.zheight-0.01,obj_player.y+8,obj_player.z+0.01))
                if (rectangle_in_rectangle(x,z+zheight,x+sprite_width,z,obj_player.xspeed+obj_player.x-8,obj_player.z+obj_player.zheight-0.01,obj_player.xspeed+obj_player.x+8,obj_player.z+0.01))
                {
                    other.cantmove_x = true;
                    opening = true;
                    alarm[0] = 90;
                }
    }*/
