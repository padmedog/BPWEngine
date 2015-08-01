///draw_sprite_skew_ext(sprite_index, image_index, x, y, hskew, vskew)
/**
 * Draws a sprite skewed around it's origin.
 * Syntax is the same as draw_sprite with the addition of hskew and vskew.
 * hskew - horizontal skew. Positive numbers skew image to the right.
 * vskew - vertical skew. Positive numbers skew image to the bottom.
 *
 * The skewing is done using primitives, meaning it wont work for HTML5 exports without WebGL (For now only Chrome and Firefox support it).
 */
{
    // Just call the ext version with default parameters. Woop woop for code reusability.
    draw_sprite_skew_ext(argument0, argument1, argument2, argument3, image_xscale, image_yscale, image_angle, image_blend, image_alpha, argument4, argument5);
}
