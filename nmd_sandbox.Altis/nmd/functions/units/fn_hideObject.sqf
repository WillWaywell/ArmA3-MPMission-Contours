private[ "_unit", "_bool" ];

_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_bool = [ _this, 1, false, [true] ] call BIS_fnc_param;

_unit hideObject _bool;