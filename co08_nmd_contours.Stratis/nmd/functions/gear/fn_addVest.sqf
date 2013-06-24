private [ "_unit", "_class", "_return" ];
_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_class = [ _this, 1, "", [""] ] call BIS_fnc_param;
_return = false;

if( _class call NMD_fnc_isVest ) then {
	_unit addVest _class;
	waitUntil { vest _unit == _class };
	_return = true;
};

_return;