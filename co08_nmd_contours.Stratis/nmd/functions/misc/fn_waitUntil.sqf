/*
|	Project: NMD MP Framework
|	repo: https://github.com/WillWaywell/NMD-MP-Framework
|	Author: Nimrod
|	Email: nimrod@nomandown.com
|	Website: www.nomandown.com
|
|	Description: Suspend execution of function or SQF based script until condition is satisfied.
|	Syntax: [{condition}, delay] call NMD_fnc_waitUntil;
|	Parameters:	
|		condition: Code - Condition to remove suspension.
|		delay: Number - (optional, default: 500) Time in miliseconds before each check.
*/

private [ "_cond", "_delay" ];
_cond = [ _this, 0, { true }, [{}] ] call BIS_fnc_param;
_delay = [ _this, 1, 500, [0] ] call BIS_fnc_param;
_delay = ( _delay / 1000 );

while { !call _cond } do {
	sleep _delay;
};