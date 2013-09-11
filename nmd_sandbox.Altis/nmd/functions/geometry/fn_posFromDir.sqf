private[ "_unit", "_dir", "_dist", "_pos" ];

_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_dir = [ _this, 1, 0, [0] ] call BIS_fnc_param;
_dist = [ _this, 2, 10, [0] ] call BIS_fnc_param;

[ ( getPos vehicle player select 0 ) + ( _dist * sin( _dir ) ), ( getPos vehicle player select 1 ) + ( _dist * cos( _dir ) ), 0 ]