///draw_sprite_skew_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, hskew, vskew)
/**
 * Draws a sprite skewed around it's origin.
 * Syntax is the same as draw_sprite_ext with the addition of hskew and vskew.
 * hskew - horizontal skew. Positive numbers skew image to the right.
 * vskew - vertical skew. Positive numbers skew image to the bottom.
 *
 * The skewing is done using primitives, meaning it wont work for HTML5 exports without WebGL (For now only Chrome and Firefox support it).
 */
{
    // Get arguments in readable variables for reference.
    var sprite = argument0, index = argument1, xx = argument2, yy = argument3, xscale = argument4, yscale = argument5, cosAngle = cos(degtorad(argument6)), sinAngle = sin(degtorad(argument6)), tint = argument7, alpha = argument8, hskew = argument9, vskew = argument10;
    // Precalculate these as they are used quite a lot.
    var sprTex = sprite_get_texture(sprite, index), sprWidth = sprite_get_width(sprite), sprHeight = sprite_get_height(sprite), sprXOrig = sprite_get_xoffset(sprite), sprYOrig = sprite_get_yoffset(sprite);
    var tempX, tempY, tempDir, tempDist;
    
    // Begin drawing the primitive.
    draw_primitive_begin_texture(pr_trianglestrip, sprTex);
    // Top left corner
    tempX = (-sprXOrig + (sprYOrig / sprHeight) * hskew) * xscale;
    tempY = (-sprYOrig + (sprXOrig / sprWidth) * -vskew) * yscale;
    draw_vertex_texture_color(xx + tempX * cosAngle - tempY * sinAngle, yy + tempX * sinAngle + tempY * cosAngle, 0, 0, tint, alpha);
    
    // Top right corner
    tempX = (sprWidth + (sprYOrig / sprHeight) * hskew - sprXOrig) * xscale;
    tempY = (-sprYOrig + (1 - sprXOrig / sprWidth) * vskew) * yscale;
    draw_vertex_texture_color(xx + tempX * cosAngle - tempY * sinAngle, yy + tempX * sinAngle + tempY * cosAngle, 1, 0, tint, alpha);
    
    // Bottom left corner
    tempX = (-sprXOrig + (1 - sprYOrig / sprHeight) * -hskew) * xscale;
    tempY = (sprHeight - sprYOrig + (sprXOrig / sprWidth) * -vskew) * yscale;
    draw_vertex_texture_color(xx + tempX * cosAngle - tempY * sinAngle, yy + tempX * sinAngle + tempY * cosAngle, 0, 1, tint, alpha);
    
    // Bottom right corner
    tempX = (sprWidth - sprXOrig + (1 - sprYOrig / sprHeight) * -hskew) * xscale;
    tempY = (sprHeight - sprYOrig + (1 - sprXOrig / sprWidth) * vskew) * yscale;
    draw_vertex_texture_color(xx + tempX * cosAngle - tempY * sinAngle, yy + tempX * sinAngle + tempY * cosAngle, 1, 1, tint, alpha);
    draw_primitive_end();
    
    //That was easy.
}