/*
|	Project: NMD MP Framework
|	repo: https://github.com/WillWaywell/NMD-MP-Framework
|	Author: Nimrod
|	Email: nimrod@nomandown.com
|	Website: www.nomandown.com
|
|	Description: Check if any members of the given group are alive.
|	Syntax: [group] call NMD_fnc_groupAlive;
|	Parameters:	
|		condition: Group - The group to check is alive
*/

private [ "_group" ];
_group = [ _this, 0, grpNull, [grpNull] ] call BIS_fnc_param;

!( { alive _x } count units _group == 0 );