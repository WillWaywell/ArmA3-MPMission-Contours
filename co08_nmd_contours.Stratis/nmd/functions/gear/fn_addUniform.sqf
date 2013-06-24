private [ "_unit", "_class", "_return" ];
_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_class = [ _this, 1, "", [""] ] call BIS_fnc_param;
_return = false;

if( _class call NMD_fnc_isUniform ) then {
	_unit addUniform _class;
	waitUntil { uniform _unit == _class };
	_return = true;
};

_return;