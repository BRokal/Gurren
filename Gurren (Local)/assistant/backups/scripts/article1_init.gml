//###############################################################################
//CONSTANTS
//###############################################################################

//====> APPEARANCE
sprite_index = sprite_get("tornado")

//====> PHYSICS
mask_index = sprite_get("tornado_mask")
can_be_grounded = true;
ignores_walls = false;
free = false;

//====> X MOVEMENT
base_xspeed = 6
xdecrement = 0.1

//====> Y MOVEMENT
gincrement = 0.2
gmax = 6

//====> PROPERTIES
owner = noone
lifetime = 60 * 4

//###############################################################################
//VARIABLES
//###############################################################################

//====> HITBOX
curr_hitbox = noone;

//====> GRAB
grabbed_player_obj = noone;    //the player object currently being grabbed.

//###############################################################################
//COUNTERS
//###############################################################################

_lifetime = lifetime

//###############################################################################
//INITIALIZATION
//###############################################################################

_init = true

//END