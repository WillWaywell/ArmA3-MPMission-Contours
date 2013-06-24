private [ "_value", "_array", "_sensitive", "_return" ];
_value = [ _this, 0 ] call BIS_fnc_param;
_array = [ _this, 1, [], [[]] ] call BIS_fnc_param;
_sensitive = [ _this, 2, false, [true] ] call BIS_fnc_param;

if( !_sensitive ) then {
	if( ( { _x == _value } count _array ) > 0 ) then { _return = true } else { _return = false };
} else {
	_return = ( _value in _array );
};
	
_return;