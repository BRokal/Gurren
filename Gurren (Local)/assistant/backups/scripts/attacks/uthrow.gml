//############### Initial Variables ################
var _at = AT_UTHROW

//############### Attack ################
make_attack(_at,
	AG_CATEGORY, 2,
	AG_SPRITE, sprite_get("uthrow"),
	AG_NUM_WINDOWS, 6,
	AG_HAS_LANDING_LAG, 1,
	AG_LANDING_LAG, 4,
	AG_HURTBOX_SPRITE, sprite_get("uthrow_hurt"),
)

//############### Windows ################
make_windows(_at,
	[
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 18,
		AG_WINDOW_ANIM_FRAMES, 6,
		AG_WINDOW_HSPEED_TYPE, 1,
		AG_WINDOW_HSPEED, 0,
		AG_WINDOW_VSPEED_TYPE, 1,
		AG_WINDOW_VSPEED, 0,
	],
	[
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 3,
		AG_WINDOW_ANIM_FRAMES, 1,
		AG_WINDOW_ANIM_FRAME_START, 6,
		AG_WINDOW_HSPEED_TYPE, 1,
		AG_WINDOW_HSPEED, 0,
		AG_WINDOW_VSPEED_TYPE, 1,
		AG_WINDOW_VSPEED, 0,
	],
	[//Breath Fire
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 12,
		AG_WINDOW_ANIM_FRAMES, 4,
		AG_WINDOW_ANIM_FRAME_START, 7,
		AG_WINDOW_HSPEED_TYPE, 1,
		AG_WINDOW_HSPEED, 0,
		AG_WINDOW_VSPEED_TYPE, 1,
		AG_WINDOW_VSPEED, 0,
	],
	[
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 12,
		AG_WINDOW_ANIM_FRAMES, 6,
		AG_WINDOW_ANIM_FRAME_START, 11,
		AG_WINDOW_HSPEED_TYPE, 1,
		AG_WINDOW_HSPEED, 0,
		AG_WINDOW_VSPEED_TYPE, 1,
		AG_WINDOW_VSPEED, 0,
	],
	[//Kick
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 3,
		AG_WINDOW_ANIM_FRAMES, 1,
		AG_WINDOW_ANIM_FRAME_START, 17,
		AG_WINDOW_HSPEED_TYPE, 1,
		AG_WINDOW_HSPEED, 0,
		AG_WINDOW_VSPEED_TYPE, 1,
		AG_WINDOW_VSPEED, 0,
	],
	[//Spin
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 28,
		AG_WINDOW_ANIM_FRAMES, 7,
		AG_WINDOW_ANIM_FRAME_START, 18,
		AG_WINDOW_HSPEED_TYPE, 2,
		AG_WINDOW_HSPEED, -5,
		AG_WINDOW_VSPEED_TYPE, 2,
		AG_WINDOW_VSPEED, -10,
	],
)

//############### Hitboxes ################
set_num_hitboxes(_at, 2);
make_hitboxes(_at,
	[
		HG_HITBOX_GROUP, -1,
		HG_HITBOX_TYPE, 1,
		HG_WINDOW, 3,
		HG_WINDOW_CREATION_FRAME, 1,
		HG_LIFETIME, 12,
		HG_HITBOX_X, 44,
		HG_HITBOX_Y, -26,
		HG_WIDTH, 60,
		HG_HEIGHT, 60,
		HG_SHAPE, 0,
		HG_PRIORITY, 2,
		HG_DAMAGE, 4,
		HG_ANGLE, 270,
		HG_BASE_KNOCKBACK, 10,
		HG_KNOCKBACK_SCALING, 1.0,
		HG_BASE_HITPAUSE, 20,
		HG_HITPAUSE_SCALING, 1.0,
		HG_VISUAL_EFFECT, 197,
		HG_VISUAL_EFFECT_Y_OFFSET, 20,
		HG_HIT_SFX, asset_get("sfx_boss_fireball"),
	],
	[
		HG_HITBOX_GROUP, -1,
		HG_HITBOX_TYPE, 1,
		HG_WINDOW, 5,
		HG_WINDOW_CREATION_FRAME, 1,
		HG_LIFETIME, 12,
		HG_HITBOX_X, 34,
		HG_HITBOX_Y, -30,
		HG_WIDTH, 49,
		HG_HEIGHT, 95,
		HG_SHAPE, 0,
		HG_PRIORITY, 2,
		HG_DAMAGE, 6,
		HG_ANGLE, 70,
		HG_BASE_KNOCKBACK, 7,
		HG_KNOCKBACK_SCALING, .9,
		HG_BASE_HITPAUSE, 20,
		HG_HITPAUSE_SCALING, 1.0,
		HG_VISUAL_EFFECT, 197,
		HG_VISUAL_EFFECT_Y_OFFSET, 20,
		HG_HIT_SFX, asset_get("sfx_blow_heavy2"),
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