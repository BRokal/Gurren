//############### Initial Variables ################
var _at = AT_EXTRA_1

//############### Attack ################
make_attack(_at,
	AG_CATEGORY, 1,
	AG_SPRITE, sprite_get("flip2"),
	AG_NUM_WINDOWS, 1,
	AG_HAS_LANDING_LAG, 1,
	AG_LANDING_LAG, 4,
	AG_HURTBOX_SPRITE, sprite_get("dair_hurt"),
)

//############### Windows ################
make_windows(_at,
	[
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 35,
		AG_WINDOW_ANIM_FRAMES, 10,
		AG_WINDOW_HSPEED_TYPE, 2,
		AG_WINDOW_HSPEED, -5,
		AG_WINDOW_VSPEED_TYPE, 2,
		AG_WINDOW_VSPEED, -10,
		AG_WINDOW_SFX_FRAME, 1,
	],
)

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define make_attack // Version 0
    // make_attack(_attack_name, (value_name, value)... )
    // Sets attack values for the given attack.
    // e.g. make_attack(AT_BAIR,
    //     AG_CATEGORY, 1,
    //     AG_SPRITE, sprite_get("bair")
    // )
    var _attack_name = argument[0]
    for(var i=1; i<=argument_count-1; i+=2) {
        set_attack_value(
            _attack_name, argument[i], argument[i+1]
        )
    }

#define make_windows // Version 0
    var _attack_name = argument[0];

    for(var ix=1; ix<argument_count; ix++) {

        var _curr_attack = argument[ix]
        var _index = ix;
        for(var i=0; i<=array_length_1d(_curr_attack)-1; i+=2) {
            set_window_value(
                _attack_name, _index, _curr_attack[i], _curr_attack[i+1]
            )
        }

    }
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion