if( !( call NMD_isAdmin ) ) then {

	closeDialog 0;

};

private[ "_dialog", "_ctrlPlayers" ];
disableSerialization;

_dialog = findDisplay 4200;
_ctrlPlayers = _dialog displayCtrl 4201;

{

	_ctrlPlayers lbAdd ( name _x );
	_ctrlPlayers lbSetTooltip [ ( lbSize _ctrlPlayers ) -1, ( name _x ) ];
	_ctrlPlayers lbSetColor [ ( lbSize _ctrlPlayers ) -1, ( ( [ [ typeOf _x, "side" ], "CfgVehicles" ] call NMD_fnc_configData ) call BIS_fnc_sideColor ) ];

} foreach ( call NMD_fnc_listPlayers );

_ctrlPlayers lbSetCurSel 0;