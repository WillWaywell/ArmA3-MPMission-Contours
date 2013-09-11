private[ "_dialog", "_ctrlList", "_ctrlColor", "_class", "_color", "_vehicle" ];
disableSerialization;

_dialog = findDisplay 4000;
_ctrlList = _dialog displayCtrl 4002;
_ctrlColor = _dialog displayCtrl 4004;
_class = _ctrlList lbData ( lbCurSel _ctrlList );

_vehicle = _class createVehicle ( [ player, getDir player, 15 ] call NMD_fnc_posFromDir );
_vehicle setDir getDir player;

if( ( [ [ typeOf _vehicle, "vehicleClass" ], "CfgVehicles" ] call NMD_fnc_configData ) == "Autonomous" ) then {

	createVehicleCrew _vehicle;

};

_vehicle addEventHandler [ "killed", { 

	( _this select 0 ) spawn {
	
		[ _this, NMD_DialogGarage_CleanupTime ] call NMD_fnc_cleanupUnit;
		NMD_DialogGarage_Spawned = NMD_DialogGarage_Spawned - [ _this ];
	
	};
	
} ];

NMD_DialogGarage_Spawned = NMD_DialogGarage_Spawned + [ _vehicle ];

while { count NMD_DialogGarage_Spawned > NMD_DialogGarage_VehicleLimit } do {

	{
	
		if( count ( crew _vehicle ) == 0 ) exitWith {
		
			
			[ 
			
				"NMD Garage",
				format[ "Removed %1", [ [ typeOf ( NMD_DialogGarage_Spawned select 0 ), "displayName" ], "CfgVehicles" ] call NMD_fnc_configData ] 
				
			] call NMD_fnc_titleHint;
		
			deleteVehicle ( NMD_DialogGarage_Spawned select 0 );
			[ NMD_DialogGarage_Spawned ] call BIS_fnc_arrayShift;
		
		};
	
	} foreach NMD_DialogGarage_Spawned;
	
};

if( ctrlShown _ctrlColor && { ( lbCurSel _ctrlColor ) > 0 } ) then {
	
	_color = call compile( _ctrlColor lbData ( lbCurSel _ctrlColor ) );
	
	if( typeName _color == typeName [] ) then {

		[ [ _vehicle , [ 0, ( _color select 0 ) ] ], "NMD_fnc_setObjectTexture" ] spawn BIS_fnc_MP;
		[ [ _vehicle , [ 1, ( _color select 1 ) ] ], "NMD_fnc_setObjectTexture" ] spawn BIS_fnc_MP;

	} else {

		[ [ _vehicle , [ 0, _color ] ], "NMD_fnc_setObjectTexture" ] spawn BIS_fnc_MP;

	};

};

closeDialog 0;