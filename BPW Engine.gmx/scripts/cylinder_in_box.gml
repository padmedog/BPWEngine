//no
var sx, sy, sz, bx, by, bz;
sx = argument0;
sy = argument1;
sz = argument2;
sr = argument3;
sh = argument4;
bx1 = min(argument5,argument8);
by1 = min(argument6,argument9);
bz1 = min(argument7,argument10);
bx2 = max(argument5,argument8);
by2 = max(argument6,argument9);
bz2 = max(argument7,argument10);
if(rectangle_in_circle(bx1,by1,bx2,by2,sx,sy,sr)) //xy
    if(rectangle_in_rectangle(sy-sr,sz,sy+sr,sz+sh,by1,bz1,by2,bz2)) //yz
        if(rectangle_in_rectangle(sz,sx-sr,sz+sh,sx+sr,bz1,bx1,bz2,bx2)) //zx
        {
            return true;
        }
return false;
