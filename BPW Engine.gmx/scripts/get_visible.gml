/*//get_visible(lightx,lighty);
var ax, ay, bx, by, cx, cy, dx, dy, render = true, lightx, lighty, dir1, dir2;
lightx = argument0;
lighty = argument1;
ax = bbox_left;
bx = bbox_right;
if (lightx >= bbox_left) {
if (lightx <= bbox_right) {
if (lighty <= bbox_top) {
ay = bbox_top;
} else if (lighty >= bbox_bottom) {
ay = bbox_bottom;
} else { // whoops, inside of shadow caster:
render = false;
ay = 0;
}
by = ay;
} else if (lighty < bbox_top) {
ay = bbox_top;
by = bbox_bottom;
} else if (lighty > bbox_bottom) {
ay = bbox_bottom;
by = bbox_top;
} else {
ax = bbox_right;
ay = bbox_top;
by = bbox_bottom;
}
} else if (lighty < bbox_top) {
ax = bbox_right;
bx = bbox_left;
ay = bbox_top;
by = bbox_bottom;
} else if (lighty > bbox_bottom) {
ay = bbox_top;
by = bbox_bottom;
} else {
bx = bbox_left;
ay = bbox_top;
by = bbox_bottom;
}
dir1 = point_direction(lightx,lighty,ax,ay);
cx = x+lengthdir_x(320,dir1);
cy = y+lengthdir_y(320,dir1);
dir2 = point_direction(lightx,lighty,bx,by);
dx = x+lengthdir_x(320,dir2);
dy = y+lengthdir_y(320,dir2);

var a = point_in_triangle(x,y,ax,ay,bx,by,dx,dy);
var b = point_in_triangle(x,y,ax,ay,cx,cy,dx,dy);
var c = point_in_triangle(x+sprite_width,y+sprite_height,ax,ay,bx,by,dx,dy);
var d = point_in_triangle(x+sprite_width,y+sprite_height,ax,ay,cx,cy,dx,dy);
if a || b || c || d return true; else return false;
*/return true;
