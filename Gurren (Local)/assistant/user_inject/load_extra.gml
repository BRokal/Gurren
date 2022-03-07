#define sprite_change_offset_group {
    var _xOff = argument0, _yOff = argument1, _attacks = argument2;
    
    for(var ix=0; ix<array_length_1d(_attacks); ix++) {
        sprite_change_offset(_attacks[ix], _xOff, _yOff);
    }
}