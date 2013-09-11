private[ "_vehicle", "_delta", "_diff" ];
disableSerialization;

_vehicle = ( vehicle player );
_delta = _vehicle getVariable [ "nmd_dialogvs_refueltimeoutdelta", 0 ];
_diff = ( _delta + NMD_DialogVehicleService_RefuelTimeout );

if( time > _diff || { _delta == 0 } ) then {

	_vehicle setVariable [ "nmd_dialogvs_refueltimeoutdelta", time, true ];
	_vehicle setFuel 1;
	
	[ "NMD Vehicle Service", "Vehicle refueled" ] call NMD_fnc_titleHint;

} else {
	
	[ "NMD Vehicle Service", format[ "Unable to refuel %1 seconds", ceil ( _diff - time ) ] ] call NMD_fnc_titleHint;
	
};