private [ "_logic", "_taskName", "_state" ];

_logic = BIS_functions_mainScope;
if ( isNil "_logic" ) exitWith { "BIS_functions_mainScope does not exist" call BIS_fnc_error; false };

_taskName = [ _this, 0, "", [""] ] call BIS_fnc_param;
if ( !( _taskName call BIS_fnc_taskExists ) ) exitWith { format ["Task '%1' does not exist", _taskName] call BIS_fnc_error; false };

_state = _taskName call BIS_fnc_taskState;
_state in [ "FAILED" ];