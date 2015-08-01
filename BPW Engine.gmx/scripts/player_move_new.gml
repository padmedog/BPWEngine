var test1 = rectangle_in_rectangle(125,225,175,255,100,100,200,300);
var test2 = rectangle_in_rectangle(175,275,250,350,100,100,200,300);
var test3 = rectangle_in_rectangle(100,100,200,300,175,275,250,350);
var test4 = rectangle_in_rectangle(100,100,200,300,50,150,250,250);
var test5 = rectangle_in_rectangle(50,150,250,250,100,100,200,300);

cantmove_x = false;
cantmove_y = false;
cantmove_z = false;
with(obj_wall1_verti)
{
    var owidth = sprite_width-sprite_xoffset;
    var oheight = sprite_height-sprite_yoffset;
    var xsoffset = x-sprite_xoffset;
    var ysoffset = y-sprite_yoffset;
    var xaoffset = x+owidth;
    var yaoffset = y+oheight;
    var dx1 = obj_player.x-obj_player.sprite_xoffset;
    var dy1 = obj_player.y-obj_player.sprite_yoffset;
    var dx2 = obj_player.x+obj_player.sprite_xoffset;
    var dy2 = obj_player.y+obj_player.sprite_yoffset;
    var test0 = rectangle_in_rectangle(xsoffset,ysoffset,xaoffset,yaoffset,dx1+obj_player.xspeed,dy1,dx2+obj_player.xspeed,dy2);
    if(test0 > 0)
    {
        if(rectangle_in_rectangle(xsoffset,z+zheight,xaoffset,z,dx1+obj_player.xspeed,obj_player.z+obj_player.zheight,dx2+obj_player.xspeed,obj_player.z))
        {
            if(rectangle_in_rectangle(ysoffset,z+zheight,yaoffset,z,dy1,obj_player.z+obj_player.zheight,dy2,obj_player.z))
            {
                other.cantmove_x = true;
            }
        }
    }
    //take note this part is incomplete
    if(rectangle_in_rectangle(xsoffset,ysoffset,xaoffset,yaoffset,dx1,dy1+obj_player.yspeed,dx2,dy2+obj_player.yspeed))
    {
        var lunch = 5;
        if(rectangle_in_rectangle(xsoffset,z+zheight,xaoffset,z,dx1,obj_player.z+obj_player.zheight,dx1,obj_player.z))
        {
            var pizza = 5;
            if(rectangle_in_rectangle(ysoffset,z+zheight,yaoffset,z,dy1+obj_player.yspeed,obj_player.z+obj_player.zheight,dy2+obj_player.yspeed,obj_player.z))
            {
                other.cantmove_y = true;
            }
        }
    }
/*    if(rectangle_in_rectangle(x+-sprite_xoffset,y+-sprite_yoffset,x+owidth,y+oheight,obj_player.x+-sprite_xoffset,obj_player.y+-sprite_yoffset,obj_player.x+sprite_xoffset,obj_player.y+sprite_yoffset))
        if(rectangle_in_rectangle(x+-sprite_xoffset,z+zheight,x+oheight,z,obj_player.x+-sprite_xoffset,obj_player.z+obj_player.zheight+obj_player.zspeed,obj_player.x+sprite_xoffset,obj_player.z+obj_player.zspeed))
            if(rectangle_in_rectangle(y+-sprite_yoffset,z+zheight,y+oheight,z,obj_player.y+-sprite_yoffset,obj_player.z+obj_player.zheightobj_player.zspeed,obj_player.y+sprite_yoffset,obj_player.z+obj_player.zspeed))
                other.cantmove_z = true;*/
}
if(cantmove_x)
    xspeed = 0;
x += xspeed;
if(cantmove_y)
    yspeed = 0;
y += yspeed;
//if(cantmove_z)
//    zspeed = 0;
//z += zspeed;*/
return cantmove_x||cantmove_y;
