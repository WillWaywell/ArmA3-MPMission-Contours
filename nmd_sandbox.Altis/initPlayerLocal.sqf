NMD_Admins = [

	"76561198008775797", // Nimrod
	"76561198082889469" // Dr Smooth

];

NMD_isAdmin = { ( getPlayerUID player ) in NMD_Admins || serverCommandAvailable "#kick" };

// NMD Garage Params
NMD_DialogGarage_VehicleLimit = ( "VehicleLimit" call NMD_fnc_missionParam );
NMD_DialogGarage_CleanupTime = ( "VehicleCleanupTime" call NMD_fnc_missionParam );

// NMD Vehicle Service Params
NMD_DialogVehicleService_RepairTimeout = ( "ServiceRepairTime" call NMD_fnc_missionParam );
NMD_DialogVehicleService_RefuelTimeout = ( "ServiceRefuelTime" call NMD_fnc_missionParam );
NMD_DialogVehicleService_RearmTimeout = ( "ServiceRearmTime" call NMD_fnc_missionParam );

NMD_playerInit = {
	
	player addAction [ "<t color='#85bfdb'>NMD Menu</t>", "nmd\dialogs\menu\create.sqf", nil, -1, false, true ];
	player addAction [ "<t color='#85bfdb'>VAS Gear</t>", "VAS\open.sqf", nil, -1, false, true, "", "vehicle player == player" ];

};

waitUntil { !isNull player };

call NMD_playerInit;

player addEventHandler [ "respawn", { 

	[ ( _this select 1 ), 0 ] call NMD_fnc_cleanupUnit;

	call NMD_playerInit;
	setPlayerRespawnTime getNumber( missionConfigFile >> "respawnDelay" );

} ];

if( [ "FriendlyFire", true ] call NMD_fnc_missionParam ) then {

	player addEventHandler [ "killed", { 

		_unit = ( _this select 1 );
		
		if( _unit != player && { isPlayer _unit } ) then {
		
			[ 60, "NMD_fnc_setPlayerRespawnTime", _unit ] spawn BIS_fnc_MP;
			_unit setDamage 1;
		
		};

	} ];

};

waitUntil { time > 0 };

[ "NMD Sandbox", "<img image='nmd\nmd.paa' size='5' shadow='0' /><br />Welcome to NMD Sandbox.<br /><br />To get access to the NMD dialogs, please use your scroll menu and select 'NMD Menu'." ] call NMD_fnc_titleHint;