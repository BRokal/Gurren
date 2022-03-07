//###############################################################################
//INITIALIZATION
//###############################################################################

if (_init)
{
    hsp = base_xspeed * owner.spr_dir
    curr_hitbox = create_hitbox(AT_NSPECIAL, 1, x, y)
    
    _init = false
}

//###############################################################################
//PHYSICS
//###############################################################################

if (free)
{
    //Gravity
    vsp += gincrement
    if (vsp > gmax) { vsp = gmax }
}
else
{
    //Horizontal Movement
    //Reduce speed gradually
    var abs_hsp = abs(hsp)
    
    abs_hsp -= xdecrement
    if (abs_hsp < 0) { abs_hsp = 0 }
    
    hsp = abs_hsp * sign(hsp)
}

//###############################################################################
//FUNCTIONALITY
//###############################################################################

//Grab the enemy
var touch = instance_place(x, y, oPlayer);
if (touch != noone && touch != owner)
{
    grabbed_player_obj = touch
}

//Grabbed enemy logic
if (instance_exists(grabbed_player_obj))
{
    //Enemy liberation
    if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
    
    else
    {
        //Keep enemy on hitstop
        grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		//Keep enemy inside the tornado
		grabbed_player_obj.x = x
		grabbed_player_obj.y = y - 30
    }
}

prints(grabbed_player_obj)

//###############################################################################
//HITBOX
//###############################################################################

//Update Hitbox position
if (instance_exists(curr_hitbox))
{
    curr_hitbox.x = x
    curr_hitbox.y = y
}

//###############################################################################
//COUNTERS
//###############################################################################

_lifetime = count(_lifetime, -1, 0)

//###############################################################################
//EXISTENCE
//###############################################################################

if (_lifetime <= 0)
{
    instance_destroy()
}

//END

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define prints // Version 0
    // Prints each parameter to console, separated by spaces.
    var _out_string = string(argument[0])
    for (var i=1; i<argument_count; i++) {
        _out_string += " "
        _out_string += string(argument[i])
    }
    print(_out_string)

#define count // Version 0
    var _val = argument[0];
    var _sum = argument[1];
    var _limit = argument[2];

    _val += _sum
    if (_val == _limit) { _val = _limit }

    return _val
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion