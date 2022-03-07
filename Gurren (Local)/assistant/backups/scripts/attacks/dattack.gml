//############### Initial Variables ################
var _at = AT_DATTACK

//############### Attack ################
make_attack(_at,
	AG_SPRITE, sprite_get("dattack"),
	AG_NUM_WINDOWS, 3,
	AG_AIR_SPRITE, sprite_get("dattack"),
	AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"),
)

//############### Windows ################
make_windows(_at,
	[
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 9,
		AG_WINDOW_ANIM_FRAMES, 3,
		AG_WINDOW_HSPEED, 4,
		AG_WINDOW_HAS_CUSTOM_FRICTION, 1,
		AG_WINDOW_HAS_SFX, 1,
		AG_WINDOW_SFX, asset_get("sfx_spin"),
	],
	[
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 12,
		AG_WINDOW_ANIM_FRAMES, 6,
		AG_WINDOW_ANIM_FRAME_START, 3,
		AG_WINDOW_HSPEED, 8,
		AG_WINDOW_HSPEED_TYPE, 1,
		AG_WINDOW_HAS_CUSTOM_FRICTION, 1,
		AG_WINDOW_CUSTOM_GROUND_FRICTION, .04,
	],
	[
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 8,
		AG_WINDOW_ANIM_FRAMES, 2,
		AG_WINDOW_ANIM_FRAME_START, 9,
		AG_WINDOW_HAS_CUSTOM_FRICTION, 1,
		AG_WINDOW_CUSTOM_AIR_FRICTION, .1,
		AG_WINDOW_CUSTOM_GROUND_FRICTION, .4,
		AG_WINDOW_HAS_WHIFFLAG, 5,
	],
)

//############### Hitboxes ################
set_num_hitboxes(_at, 2);
make_hitboxes(_at,
	[
		//Beak
		HG_HITBOX_TYPE, 1,
		HG_HITBOX_GROUP, 1,
		HG_WINDOW, 2,
		HG_LIFETIME, 12,
		HG_HITBOX_X, 30,
		HG_HITBOX_Y, -21,
		HG_WIDTH, 52,
		HG_HEIGHT, 28,
		HG_PRIORITY, 2,
		HG_DAMAGE, 8,
		HG_ANGLE, 60,
		HG_BASE_KNOCKBACK, 6,
		HG_KNOCKBACK_SCALING, .3,
		HG_BASE_HITPAUSE, 6,
		HG_HIT_SFX, asset_get("sfx_blow_weak2"),
		HG_HIT_LOCKOUT, 5,
	],
	[
		//Wings
		HG_HITBOX_TYPE, 1,
		HG_HITBOX_GROUP, 1,
		HG_WINDOW, 2,
		HG_WINDOW_CREATION_FRAME, 6,
		HG_LIFETIME, 10,
		HG_HITBOX_X, -8,
		HG_HITBOX_Y, -28,
		HG_WIDTH, 59,
		HG_HEIGHT, 95,
		HG_PRIORITY, 2,
		HG_DAMAGE, 6,
		HG_ANGLE, 60,
		HG_BASE_KNOCKBACK, 5,
		HG_KNOCKBACK_SCALING, .2,
		HG_BASE_HITPAUSE, 6,
		HG_HIT_SFX, asset_get("sfx_blow_weak2"),
		HG_SHAPE, 2, //Rounded Rectangle
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