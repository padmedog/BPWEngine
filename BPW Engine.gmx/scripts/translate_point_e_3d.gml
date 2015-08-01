//translate_point_e_3d(x,y,z,direction,pitch,rotation);
var _x, _y, _z, _dir, _pit, _rot, _dist, _tdir, _result, _fx, _fy, _fz;
_x = argument0;
_y = argument1;
_z = argument2;
_dir = argument3;
_pit = argument4;
_rot = argument5;
_fx = 0;
_fy = 0;
_fz = 0;

_dist = point_distance(0,0,_x,_y);
var _gdir = point_direction(0,0,_x,_y) + _dir;
_fx += lengthdir_x(_dist,_gdir);
_fy += lengthdir_y(_dist,_gdir);

_dist = point_distance(0,0,_x,_z);
_tdir = point_direction(0,0,_x,_z) + _pit;
_fz += lengthdir_x(_dist,_tdir);
var _tx = lengthdir_y(_dist,_tdir);
var _tp = translate_point_e(_tx,0,_gdir);
_fx += _tp[0];
_fz += _tp[1];

_dist = point_distance(0,0,_z,_y);
_tdir = point_direction(0,0,_z,_y) + _rot;
_tz = lengthdir_x(_dist,_tdir);
_fy += lengthdir_y(_dist,_tdir);
_tp = translate_point_e(_tz,0,_gdir);
_fz += _tp[0];
_fy += _tp[1];

_result[0] = _fx;
_result[1] = _fy;
_result[2] = _fz;
return _result;
