//############### Initial Variables ################
var _at = AT_USPECIAL

//############### Attack ################
make_attack(_at,
	AG_CATEGORY, 2,
	AG_SPRITE, sprite_get("uspecial"),
	AG_NUM_WINDOWS, 7,
	AG_HAS_LANDING_LAG, 4,
	AG_OFF_LEDGE, 1,
	AG_AIR_SPRITE, sprite_get("uspecial"),
	AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"),
)

//############### Windows ################
make_windows(_at,
	[//Startup
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 12,
		AG_WINDOW_ANIM_FRAMES, 4,
	],
	[//Hug
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 3,
		AG_WINDOW_ANIM_FRAMES, 1,
		AG_WINDOW_ANIM_FRAME_START, 4,
		AG_WINDOW_HAS_SFX, 1,
		AG_WINDOW_SFX, asset_get("sfx_shovel_hit_heavy2"),
	],
	[//Transition
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 9,
		AG_WINDOW_ANIM_FRAMES, 3,
		AG_WINDOW_ANIM_FRAME_START, 5,
	],
	[//Jump
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 6,
		AG_WINDOW_ANIM_FRAMES, 2,
		AG_WINDOW_ANIM_FRAME_START, 8,
		AG_WINDOW_HSPEED_TYPE, 1,
		AG_WINDOW_HSPEED, 0,
		AG_WINDOW_VSPEED_TYPE, 0,
		AG_WINDOW_VSPEED, -10, //-jump_speed,
	],
	[
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 9,
		AG_WINDOW_ANIM_FRAMES, 3,
		AG_WINDOW_ANIM_FRAME_START, 10,
		AG_WINDOW_HSPEED_TYPE, 1,
		AG_WINDOW_HSPEED, 0,
		AG_WINDOW_VSPEED_TYPE, 2,
		AG_WINDOW_VSPEED, -4,
		AG_WINDOW_HAS_SFX, 1,
		AG_WINDOW_SFX, sound_get("thunder2"),
	],
	[//Swing
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 3,
		AG_WINDOW_ANIM_FRAMES, 1,
		AG_WINDOW_ANIM_FRAME_START, 13,
		AG_WINDOW_HSPEED_TYPE, 2,
		AG_WINDOW_HSPEED, 5,
		AG_WINDOW_VSPEED_TYPE, 2,
		AG_WINDOW_VSPEED, -8,
		AG_WINDOW_HAS_SFX, 1,
		AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy2"),
	],
	[
		AG_WINDOW_TYPE, 7,
		AG_WINDOW_LENGTH, 20,
		AG_WINDOW_ANIM_FRAMES, 6,
		AG_WINDOW_ANIM_FRAME_START, 14,
	],
)

//############### Hitboxes ################
set_num_hitboxes(_at, 2);
make_hitboxes(_at,
	[
		HG_HITBOX_GROUP, -1,
		HG_HITBOX_TYPE, 1,
		HG_WINDOW, 2,
		HG_LIFETIME, 3,
		HG_HITBOX_X, 26,
		HG_HITBOX_Y, -12,
		HG_WIDTH, 93,
		HG_HEIGHT, 30,
		HG_SHAPE, 0,
		HG_PRIORITY, 1,
		HG_DAMAGE, 2,
		HG_ANGLE, 65,
		HG_BASE_KNOCKBACK, 5,
		HG_BASE_HITPAUSE, 6,
		HG_VISUAL_EFFECT, 3,
		HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"),
	],
	[
		HG_HITBOX_GROUP, -1,
		HG_HITBOX_TYPE, 1,
		HG_WINDOW, 6,
		HG_LIFETIME, 3,
		HG_HITBOX_X, 47,
		HG_HITBOX_Y, -46,
		HG_WIDTH, 86,
		HG_HEIGHT, 86,
		HG_SHAPE, 0,
		HG_PRIORITY, 1,
		HG_DAMAGE, 2,
		HG_ANGLE, 65,
		HG_BASE_KNOCKBACK, 5,
		HG_BASE_HITPAUSE, 6,
		HG_VISUAL_EFFECT, 3,
		HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"),
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