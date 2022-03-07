//DONE

sprite_change_offset_group(144, 158, [
    "idle",
    "idle_hurt",
    "crouch",
    "walk",
    "dash",
    "dashstart",
    
    "jumpstart",
    "jump",
    "doublejump",
    "pratfall",
    
    "jab",
    "dattack",
    "dtilt",
    "ftilt",
    "utilt",
    "nair",
    "fair",
    "uair",
    "dair",
    "fstrong",
    "ustrong",
    "dstrong",
    "nspecial",
    "dspecial",
    "uspecial",
    "uspecial_proto",
    
    "flip2",
    "uthrow",
    
    "fire",
    "tornado",
    "tornado_mask",
    "tornado_hb_mask",
    "fire_tornado",
]);

//Copy and paste sprite offsets from below to match the aseprite source

//STILL SANDBERT

sprite_change_offset_group(32, 62, [
    "walkturn",
    "hurt",
    "dashstop",
    "dashturn",
    
    "walljump",
    "land",
    "landinglag",
    
    "parry",
    "roll_forward",
    "roll_backward",
    "airdodge",
    "waveland",
    "tech",
    
    "taunt",
]);

sprite_change_offset_group(64, 94, [
    "bair",
    "fspecial",
    
    "plat",
    
    "nspecial_proj",
]);

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define sprite_change_offset_group // Version 0
    var _xOff = argument0, _yOff = argument1, _attacks = argument2;

    for(var ix=0; ix<array_length_1d(_attacks); ix++) {
        sprite_change_offset(_attacks[ix], _xOff, _yOff);
    }
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion