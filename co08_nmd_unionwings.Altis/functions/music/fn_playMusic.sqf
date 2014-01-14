private [ "_name", "_start" ];

_name = [ _this, 0, "", [""] ] call BIS_fnc_param;
_start = [ _this, 1, 0, [0] ] call BIS_fnc_param;

playMusic [ _name, _start ];