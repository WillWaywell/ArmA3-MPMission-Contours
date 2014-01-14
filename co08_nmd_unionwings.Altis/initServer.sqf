{

	//--- Disable current units fleeing
	if( side _x == INDEPENDENT ) then { _x allowFleeing 0 };

} forEach ( allUnits );