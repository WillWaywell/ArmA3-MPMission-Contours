/*
|	Project: NMD MP Framework
|	repo: https://github.com/WillWaywell/NMD-MP-Framework
|	Author: Nimrod
|	Email: nimrod@nomandown.com
|	Website: www.nomandown.com
|
|	Description: taskPatrol with position and radius determained from a waypoint completion radius.
|	Syntax: [unit] call NMD_fnc_taskSetState;
|	Parameters:	
|		unit: Object - Target unit
*/

private[ "_unit", "_group", "_wp", "_position", "_radius" ];
_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_group = group _unit;
_wp = ( ( waypoints _unit ) select 0 );
_position = ( waypointPosition _wp );
_radius = ( waypointCompletionRadius _wp );

deleteWaypoint _wp;
[ _group, _position, _radius ] call BIS_fnc_taskPatrol;