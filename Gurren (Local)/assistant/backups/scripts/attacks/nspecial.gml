//############### Initial Variables ################
var _at = AT_NSPECIAL

//############### Attack ################
make_attack(_at,
	AG_CATEGORY, 2,
	AG_SPRITE, sprite_get("nspecial"),
	AG_NUM_WINDOWS, 3,
	AG_HAS_LANDING_LAG, 4,
	AG_OFF_LEDGE, 1,
	AG_AIR_SPRITE, sprite_get("nspecial"),
	AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"),
)

//############### Windows ################
make_windows(_at,
	[
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 9,
		AG_WINDOW_ANIM_FRAMES, 3,
		AG_WINDOW_SFX_FRAME, 4,
	],
	[
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 3,
		AG_WINDOW_ANIM_FRAMES, 1,
		AG_WINDOW_HAS_SFX, 1,
		AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial"),
		AG_WINDOW_ANIM_FRAME_START, 3,
	],
	[
		AG_WINDOW_TYPE, 1,
		AG_WINDOW_LENGTH, 16,
		AG_WINDOW_ANIM_FRAMES, 5,
		AG_WINDOW_ANIM_FRAME_START, 4,
	],
)

//############### Hitboxes ################
set_num_hitboxes(_at, 2);
make_hitboxes(_at,
	[
		HG_HITBOX_TYPE, 2,
		HG_HITBOX_GROUP, -1,
		HG_LIFETIME, 60 * 4,
		HG_PRIORITY, 1,
		HG_ANGLE, 90,
		HG_BASE_KNOCKBACK, 5,
		HG_BASE_HITPAUSE, 6,
		HG_VISUAL_EFFECT, 3,
		HG_PROJECTILE_SPRITE, asset_get("empty_sprite"),
		//HG_PROJECTILE_SPRITE, sprite_get("tornado_hb_mask"),
		HG_PROJECTILE_MASK, sprite_get("tornado_hb_mask"),
		HG_PROJECTILE_GROUND_BEHAVIOR, 1,
		HG_PROJECTILE_WALL_BEHAVIOR, 1,
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