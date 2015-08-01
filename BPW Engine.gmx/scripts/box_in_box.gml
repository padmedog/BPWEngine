//box_in_box(sx1, sy1, sz1, sx2, sy2, sz2, bx1, by1, bz1, bx2, by2, bz2);
var sx, sy, sz, bx, by, bz;
sx1 = min(argument0,argument4);
sy1 = min(argument1,argument5);
sz1 = min(argument2,argument6);
sx2 = max(argument0,argument4);
sy2 = max(argument1,argument5);
sz2 = max(argument2,argument6);
bx1 = min(argument7,argument10);
by1 = min(argument8,argument11);
bz1 = min(argument9,argument12);
bx2 = max(argument7,argument10);
by2 = max(argument8,argument11);
bz2 = max(argument9,argument12);
if(rectangle_in_rectangle(sx1,sy1,sx2,sy2,bx1,by1,bx2,by2)) //xy
    if(rectangle_in_rectangle(sy1,sz1,sy2,sz2,by1,bz1,by2,bz2)) //yz
        if(rectangle_in_rectangle(sz1,sx1,sz2,sx2,bz1,bx1,bz2,bx2)) //zx
        {
            return true;
        }
return false;
