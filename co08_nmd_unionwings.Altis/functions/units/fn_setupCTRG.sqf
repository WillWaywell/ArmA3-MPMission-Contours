private [ "_unit", "_voice", "_voices", "_newUnifrom", "_uniformItems", "_newVest", "_vestItems", "_newRuck", "_ruckItems" ];

_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_voice = [ _this, 1, 0, [0] ] call BIS_fnc_param;

//--- Wait for player object to be local
if( !isDedicated ) then { waitUntil { !isNull player && { local player } } };

//--- Voices
_voices = [ "Male01ENGB", "Male02ENGB", "Male03ENGB", "Male04ENGB" ];
_unit setSpeaker ( _voices select _voice );

//--- Exit if unit is not local
if( !( local _unit ) ) exitWith { diag_log format[ "SETUP CTRG: EXIT UNIT NOT LOCAL = %1", name _unit ] };

//--- Exit if server and unit is a remote player
if( isServer && { isPlayer _unit } && { player != _unit } ) exitWith { diag_log format[ "SETUP CTRG EXIT ISPLAYER - %1", name _unit ] };

//--- Exit if already setup
if( _unit getVariable [ "NMD_setupCTRG", false ] ) exitWith { diag_log format[ "SETUP CTRG: EXIT ALREADY SETUP - %1", name _unit ] };

diag_log format[ "SETUP CTRG: OKAY = %1", name _unit ];

//--- Unifrom
_newUnifrom = switch( uniform _unit ) do {

	case "U_B_CombatUniform_mcam": { "U_B_CTRG_1" };
	case "U_B_CombatUniform_mcam_tshirt": { "U_B_CTRG_2" };
	case "U_B_CombatUniform_mcam_vest": { "U_B_CTRG_3" };
	default { "U_B_CTRG_1" };

};

_uniformItems = uniformItems _unit;
removeUniform _unit;
_unit addUniform _newUnifrom;
{ _unit addItemToUniform _x } forEach _uniformItems;

//--- Vest
_newVest = switch( vest _unit ) do {

	case "V_PlateCarrierGL_rgr": { "V_PlateCarrierH_CTRG" };
	case "V_PlateCarrier2_rgr": { "V_PlateCarrierL_CTRG" };
	default { "V_PlateCarrierL_CTRG" };

};

_vestItems = vestItems _unit;
removeVest _unit;
_unit addVest _newVest;
{ _unit addItemToVest _x } forEach _vestItems;

//--- Backpack
if( backpack _unit != "" ) then {

	_newRuck = switch( backpack _unit ) do {

		case "B_AssaultPack_mcamo_Ammo": { "B_Carryall_cbr" };
		default { "B_AssaultPack_rgr" };

	};

	_ruckItems = backpackItems _unit;
	removeBackpack _unit;
	_unit addBackpack _newRuck;
	{ _unit addItemToBackpack _x } forEach _ruckItems;

};

//--- Class specific
switch ( typeOf _unit ) do {

	case "B_medic_F": { // Medic
	
		_unit addPrimaryWeaponItem "optic_Aco";
		
	};

	case "B_Soldier_TL_F": { // Team leader
	
		_unit addPrimaryWeaponItem "optic_Hamr";

	};

	case "arifle_MX_SW_F": { // Autorifleman
	
		_unit addPrimaryWeaponItem "optic_Hamr";

	};

	case "B_soldier_M_F": { // Marksman
	
		_unit addPrimaryWeaponItem "optic_DMS";
		
	};

	default {

		_unit addPrimaryWeaponItem "optic_Hamr";

	};

};

_unit setVariable [ "NMD_setupCTRG", true, true ];


/*diag_log format[ "CTRG UNIT - %1", _unit ];
diag_log format[ "CTRG ISPLAYER - %1", isPlayer _unit ];
diag_log format[ "CTRG PLAYER - %1", player ];
diag_log format[ "CTRG ISUNITPLAYER - %1", ( player == _unit ) ];
diag_log format[ "CTRG LOCAL PLAYER - %1", ( local player ) ];
diag_log format[ "CTRG LOCAL UNIT - %1", ( local _unit ) ];
diag_log format[ "CTRG UID UNIT - %1", getPlayerUID _unit ];
diag_log format[ "CTRG UID PLAYER - %1", getPlayerUID player ];*/