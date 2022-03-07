#define count {
    var _val = argument[0];
    var _sum = argument[1];
    var _limit = argument[2];
    
    _val += _sum
    if (_val == _limit) { _val = _limit }
    
    return _val
}