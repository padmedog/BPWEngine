var spot, posi;
var position = argument5;
for(i = 0; i < 5; i++)
{
    var ipos = i+position;
    if(ipos < 0)
    {
        ipos+=5;
    }
    posi[i] = ipos%5;
}
spot[posi[0]] = argument0;
spot[posi[1]] = argument1;
spot[posi[2]] = argument2;
spot[posi[3]] = argument3;
spot[posi[4]] = argument4;
var rwidth = window_get_width()/2;
var rheight = window_get_height()/2;
var alph = draw_get_alpha();
draw_set_halign(fa_center);
draw_set_alpha(1);
draw_sprite(spr_button,0,rwidth,rheight);
draw_text(rwidth,rheight,spot[2]);
draw_set_alpha(0.6);
draw_sprite(spr_button,0,rwidth-(sprite_get_width(spr_button)),rheight);
draw_sprite(spr_button,0,rwidth+(sprite_get_width(spr_button)),rheight);
draw_text(rwidth-(sprite_get_width(spr_button)),rheight,spot[1]);
draw_text(rwidth+(sprite_get_width(spr_button)),rheight,spot[3]);
draw_set_alpha(0.3);
draw_sprite(spr_button,0,rwidth-(sprite_get_width(spr_button)*2),rheight);
draw_sprite(spr_button,0,rwidth+(sprite_get_width(spr_button)*2),rheight);
draw_text(rwidth-(sprite_get_width(spr_button)*2),rheight,spot[0]);
draw_text(rwidth+(sprite_get_width(spr_button)*2),rheight,spot[4]);
draw_set_alpha(alph);
