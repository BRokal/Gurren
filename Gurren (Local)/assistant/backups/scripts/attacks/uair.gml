//############### Initial Variables ################
var _at = AT_UAIR

//############### Attack ################
make_attack(_at,
	AG_CATEGORY, 1,
	AG_SPRITE, sprite_get("uair"),
	AG_NUM_WINDOWS, 3,
	AG_HAS_LANDING_LAG, 1,
	AG_LANDING_LAG, 4,
	AG_HURTBOX_SPRITE, sprite_get("uair_hurt"),
)

//############### Windows ################
make_windows(_at,
	[
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 4,
		AG_WINDOW_ANIM_FRAMES, 2,
		AG_WINDOW_CUSTOM_GRAVITY, 1.0,
		AG_WINDOW_HAS_SFX, 1,
		AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"),
	],
	[
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 2,
		AG_WINDOW_ANIM_FRAMES, 1,
		AG_WINDOW_ANIM_FRAME_START, 2,
		AG_WINDOW_VSPEED, -1,
	],
	[
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 8,
		AG_WINDOW_ANIM_FRAMES, 4,
		AG_WINDOW_ANIM_FRAME_START, 3,
		AG_WINDOW_HAS_WHIFFLAG, 4,
		AG_WINDOW_CUSTOM_GRAVITY, 1.0,
	],
)

//############### Hitboxes ################
set_num_hitboxes(_at, 1);
make_hitboxes(_at,
	[
		HG_PARENT_HITBOX, 1,
		HG_HITBOX_TYPE, 1,
		HG_WINDOW, 2,
		HG_LIFETIME, 3,
		HG_HITBOX_X, 11,
		HG_HITBOX_Y, -62,
		HG_WIDTH, 43,
		HG_HEIGHT, 48,
		HG_PRIORITY, 1,
		HG_DAMAGE, 5,
		HG_ANGLE, 90,
		HG_BASE_KNOCKBACK, 6,
		HG_KNOCKBACK_SCALING, .5,
		HG_BASE_HITPAUSE, 6,
		HG_HITPAUSE_SCALING, .25,
		HG_VISUAL_EFFECT_Y_OFFSET, -16,
		HG_HIT_SFX, asset_get("sfx_blow_medium2"),
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

#define make_hitboxes // Version 0
    var _attack_name = argument[0];

    for(var ix=1; ix<argument_count; ix++) {

        var _curr_attack = argument[ix]
        var _index = ix;
        for(var i=0; i<=array_length_1d(_curr_attack)-1; i+=2) {
            set_hitbox_value(
                _attack_name, _index, _curr_attack[i], _curr_attack[i+1]
            )
        }

    }
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion