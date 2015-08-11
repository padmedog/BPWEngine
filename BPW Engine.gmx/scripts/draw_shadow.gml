//draw_shadow(lightx,lighty);
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
cx = x+lengthdir_x(720,dir1);
cy = y+lengthdir_y(720,dir1);
dir2 = point_direction(lightx,lighty,bx,by);
dx = x+lengthdir_x(720,dir2);
dy = y+lengthdir_y(720,dir2);

if render
{
    draw_set_color(c_black);
    draw_triangle(bx,by,ax,ay,dx,dy,false);
    draw_triangle(bx,by,cx,cy,dx,dy,false);
}
