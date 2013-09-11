private[ "_vehicle", "_delta", "_diff" ];
disableSerialization;

_vehicle = ( vehicle player );
_delta = _vehicle getVariable [ "nmd_dialogvs_rearmtimeoutdelta", 0 ];
_diff = ( _delta + NMD_DialogVehicleService_RearmTimeout );

if( time > _diff || { _delta == 0 } ) then {

	_vehicle setVariable [ "nmd_dialogvs_rearmtimeoutdelta", time, true ];
	_vehicle setVehicleAmmo 1;
	
	[ "NMD Vehicle Service", "Vehicle rearmed" ] call NMD_fnc_titleHint;

} else {

	[ "NMD Vehicle Service", format[ "Unable to rearm %1 seconds", ceil ( _diff - time ) ] ] call NMD_fnc_titleHint;

};