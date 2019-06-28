/// @description pal_swap_get_pal_count(palette sprite)
/// @function pal_swap_get_pal_count
/// @param palette sprite
//returns the number of palettes for the given sprite.
//Useful for clamping palette selection.
return(sprite_get_width(argument[0]));