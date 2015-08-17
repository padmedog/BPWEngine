cantmove_x = false;
cantmove_y = false;
cantmove_z = false;
zspeed -= 0.5;

xspeed = clamp(xspeed,-max_xspeed,max_xspeed);
yspeed = clamp(yspeed,-max_yspeed,max_yspeed);
zspeed = clamp(zspeed,-max_zspeed,max_zspeed);

with(obj_boxcollider)
{
    var offset_ = 0.01
    if(cylinder_in_box(other.x+other.xspeed,other.y,other.z,other.sprite_width/2,other.headz,x,y,z-offset_,x+sprite_width,y+sprite_height,z+zheight+offset_))
    {
        other.cantmove_x = true;
    }
    if(cylinder_in_box(other.x,other.y+other.yspeed,other.z,other.sprite_width/2,other.headz,x,y,z-offset_,x+sprite_width,y+sprite_height,z+zheight+offset_))
    {
        other.cantmove_y = true;
    }
    if(cylinder_in_box(other.x,other.y,other.z+other.zspeed,other.sprite_width/2,other.headz,x,y,z-offset_,x+sprite_width,y+sprite_height,z+zheight+offset_))
    {
        other.cantmove_z = true;
    }
    /*if(!other.cantmove_x && !other.cantmove_y && !other.cantmove_z)
    {
        if(cylinder_in_box(other.x+other.xspeed,other.y+other.yspeed,other.z+other.zspeed,other.sprite_width/2,other.headz,x,y,z,x+sprite_width,y+sprite_height,z+zheight))
        {
            other.cantmove_x = true;
            other.cantmove_y = true;
            other.cantmove_z = true;
        }
    }
    else */if(!other.cantmove_x && !other.cantmove_y)
    {
        if(cylinder_in_box(other.x+other.xspeed,other.y+other.yspeed,other.z,other.sprite_width/2,other.headz,x,y,z,x+sprite_width,y+sprite_height,z+zheight))
        {
            other.cantmove_x = true;
            other.cantmove_y = true;
        }
    }
    else if(!other.cantmove_z && !other.cantmove_y)
    {
        if(cylinder_in_box(other.x,other.y+other.yspeed,other.z+other.zspeed,other.sprite_width/2,other.headz,x,y,z,x+sprite_width,y+sprite_height,z+zheight))
        {
            other.cantmove_z = true;
            other.cantmove_y = true;
        }
    }
    else if(!other.cantmove_x && !other.cantmove_z)
    {
        if(cylinder_in_box(other.x+other.xspeed,other.y,other.z+other.zspeed,other.sprite_width/2,other.headz,x,y,z,x+sprite_width,y+sprite_height,z+zheight))
        {
            other.cantmove_x = true;
            other.cantmove_z = true;
        }
    }
    if(other.cantmove_z)
    {
        obj_player.material = material;
    }
}

var tempcantx = cantmove_x;
var tempcanty = cantmove_y;
var tempcantz = cantmove_z;
if(cantmove_x)
    xspeed = 0;
else
    x += xspeed;
if(cantmove_y)
    yspeed = 0;
else
    y += yspeed;
if(cantmove_z)
{
    if(zspeed != -0.5)
        shake_screen(0.1);
    zspeed = 0;
}
else
    z += zspeed;

return tempcantx||tempcanty;


