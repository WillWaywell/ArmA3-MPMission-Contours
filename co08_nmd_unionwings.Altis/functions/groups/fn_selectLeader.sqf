private [ "_group", "_unit" ];

_group = [ _this, 0, grpNull, [grpNull] ] call BIS_fnc_param;
_unit = [ _this, 1, objNull, [objNull] ] call BIS_fnc_param;

_group selectLeader _unit;