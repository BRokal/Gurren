//############### Initial Variables ################
var _at = AT_FSPECIAL

//############### Attack ################
make_attack(_at,
	AG_CATEGORY, 2,
	AG_SPRITE, sprite_get("fspecial"),
	AG_NUM_WINDOWS, 3,
	AG_HAS_LANDING_LAG, 4,
	AG_AIR_SPRITE, sprite_get("fspecial"),
	AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"),
)

//############### Windows ################
make_windows(_at,
	[
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 10,
		AG_WINDOW_ANIM_FRAMES, 2,
		AG_WINDOW_HSPEED_TYPE, 1,
		AG_WINDOW_VSPEED_TYPE, 1,
		AG_WINDOW_HAS_SFX, 1,
		AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss"),
		AG_WINDOW_SFX_FRAME, 8,
	],
	[
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 5,
		AG_WINDOW_ANIM_FRAMES, 1,
		AG_WINDOW_ANIM_FRAME_START, 2,
		AG_WINDOW_HSPEED, 30,
		AG_WINDOW_HSPEED_TYPE, 1,
		AG_WINDOW_VSPEED_TYPE, 1,
		AG_WINDOW_HAS_CUSTOM_FRICTION, 1,
	],
	[
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 16,
		AG_WINDOW_ANIM_FRAMES, 2,
		AG_WINDOW_ANIM_FRAME_START, 4,
		AG_WINDOW_HAS_CUSTOM_FRICTION, 1,
		AG_WINDOW_CUSTOM_AIR_FRICTION, 5,
		AG_WINDOW_CUSTOM_GROUND_FRICTION, 5,
	],
)

//############### Hitboxes ################
set_num_hitboxes(_at, 1);
make_hitboxes(_at,
	[
		HG_PARENT_HITBOX, 1,
		HG_HITBOX_TYPE, 1,
		HG_WINDOW, 2,
		HG_LIFETIME, 5,
		HG_HITBOX_X, 18,
		HG_HITBOX_Y, -30,
		HG_WIDTH, 80,
		HG_HEIGHT, 50,
		HG_PRIORITY, 2,
		HG_DAMAGE, 6,
		HG_ANGLE, 90,
		HG_BASE_KNOCKBACK, 6,
		HG_KNOCKBACK_SCALING, .3,
		HG_EFFECT, 6,
		HG_BASE_HITPAUSE, 5,
		HG_HIT_SFX, asset_get("sfx_absa_singlezap2"),
		HG_IGNORES_PROJECTILES, 1,
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