private[ "_vehicle", "_delta", "_diff" ];
disableSerialization;

_vehicle = ( vehicle player );
_delta = _vehicle getVariable [ "nmd_dialogvs_repairtimeoutdelta", 0 ];
_diff = ( _delta + NMD_DialogVehicleService_RepairTimeout );

if( time > _diff || { _delta == 0 } ) then {

	_vehicle setVariable [ "nmd_dialogvs_repairtimeoutdelta", time, true ];
	_vehicle setDamage 0;
	
	[ "NMD Vehicle Service", "Vehicle repaired" ] call NMD_fnc_titleHint;

} else {

	[ "NMD Vehicle Service", format[ "Unable to repair %1 seconds", ceil ( _diff - time ) ] ] call NMD_fnc_titleHint;

};