private [ "_time", "_volume" ];

_time = [ _this, 0, 0, [0] ] call BIS_fnc_param;
_volume = [ _this, 1, 1, [0] ] call BIS_fnc_param;

_time fadeMusic _volume;