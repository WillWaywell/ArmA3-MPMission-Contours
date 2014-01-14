private [ "_unit", "_suspend" ];

_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_suspend = [ _this, 1, true, [true] ] call BIS_fnc_param;

if( typeName _unit == typeName objNull ) then { _unit = [ _unit ] };
if( typeName _unit == typeName grpNull ) then { _unit = units _unit };

{

	_x enableSimulation !_suspend;
	_x hideObject _suspend;

} forEach _unit;