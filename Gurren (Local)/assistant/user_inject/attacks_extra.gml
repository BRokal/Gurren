#define make_windows {
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
}

#define make_hitboxes {
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
}