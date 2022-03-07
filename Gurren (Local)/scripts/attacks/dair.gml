//############### Initial Variables ################
var _at = AT_DAIR

//############### Attack ################
make_attack(_at,
	AG_CATEGORY, 1,
	AG_SPRITE, sprite_get("dair"),
	AG_NUM_WINDOWS, 3,
	AG_HAS_LANDING_LAG, 1,
	AG_LANDING_LAG, 4,
	AG_HURTBOX_SPRITE, sprite_get("dair_hurt"),
	AG_USES_CUSTOM_GRAVITY, 1,
)

//############### Windows ################
make_windows(_at,
	[
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 15,
		AG_WINDOW_ANIM_FRAMES, 3,
		AG_WINDOW_HSPEED_TYPE, 2,
		AG_WINDOW_HSPEED, -1,
		AG_WINDOW_VSPEED_TYPE, 2,
		AG_WINDOW_VSPEED, -2,
		AG_WINDOW_CUSTOM_GRAVITY, 0.5,
		AG_WINDOW_SFX_FRAME, 1,
	],
	[
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 12,
		AG_WINDOW_ANIM_FRAMES, 4,
		AG_WINDOW_ANIM_FRAME_START, 3,
		AG_WINDOW_HAS_SFX, 1,
		AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"),
		AG_WINDOW_HSPEED_TYPE, 1,
		AG_WINDOW_HSPEED, 5,
		AG_WINDOW_VSPEED_TYPE, 1,
		AG_WINDOW_VSPEED, 15,
	],
	[
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 12,
		AG_WINDOW_ANIM_FRAMES, 1,
		AG_WINDOW_ANIM_FRAME_START, 6,
		AG_WINDOW_HSPEED_TYPE, 1,
		AG_WINDOW_HSPEED, 5,
		AG_WINDOW_VSPEED_TYPE, 1,
		AG_WINDOW_VSPEED, 15,
	],
)

//############### Hitboxes ################
set_num_hitboxes(_at, 2);
make_hitboxes(_at,
	[
		HG_HITBOX_GROUP, -1,
		HG_PARENT_HITBOX, 1,
		HG_HITBOX_TYPE, 1,
		HG_WINDOW, 2,
		HG_LIFETIME, 24,
		HG_HITBOX_X, 21,
		HG_HITBOX_Y, 2,
		HG_WIDTH, 40,
		HG_HEIGHT, 40,
		HG_SHAPE, 0,
		HG_PRIORITY, 2,
		HG_DAMAGE, 18,
		HG_ANGLE, 270,
		HG_BASE_KNOCKBACK, 10,
		HG_KNOCKBACK_SCALING, 1.0,
		HG_BASE_HITPAUSE, 20,
		HG_HITPAUSE_SCALING, 1.0,
		HG_VISUAL_EFFECT, 197,
		HG_VISUAL_EFFECT_Y_OFFSET, 20,
		HG_HIT_SFX, asset_get("sfx_blow_heavy2"),
		HG_ANGLE_FLIPPER, 6,
	],
	[
		HG_HITBOX_GROUP, -1,
		HG_PARENT_HITBOX, 1,
		HG_HITBOX_TYPE, 1,
		HG_WINDOW, 2,
		HG_LIFETIME, 24,
		HG_HITBOX_X, 2,
		HG_HITBOX_Y, -16,
		HG_WIDTH, 40,
		HG_HEIGHT, 40,
		HG_SHAPE, 0,
		HG_PRIORITY, 2,
		HG_DAMAGE, 18,
		HG_ANGLE, 270,
		HG_BASE_KNOCKBACK, 10,
		HG_KNOCKBACK_SCALING, 1.0,
		HG_BASE_HITPAUSE, 20,
		HG_HITPAUSE_SCALING, 1.0,
		HG_VISUAL_EFFECT, 197,
		HG_VISUAL_EFFECT_Y_OFFSET, 20,
		HG_HIT_SFX, asset_get("sfx_blow_heavy2"),
		HG_ANGLE_FLIPPER, 6,
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