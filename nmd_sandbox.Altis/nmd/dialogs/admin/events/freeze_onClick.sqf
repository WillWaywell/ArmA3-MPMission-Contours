private[ "_dialog", "_ctrlPlayers", "_selectedPlayer" ];
disableSerialization;

_dialog = findDisplay 4200;
_ctrlPlayers = _dialog displayCtrl 4201;
_selectedPlayer = ( _ctrlPlayers lbText ( lbCurSel _ctrlPlayers ) ) call NMD_fnc_playerFromName;
_isDisabled = _selectedPlayer getVariable [ "nmd_dialogadmin_disabled", false ];

if( _isDisabled ) then {

	[ [ _selectedPlayer, true ], "NMD_fnc_enableSimulation" ] call BIS_fnc_MP;
	_selectedPlayer setVariable [ "nmd_dialogadmin_disabled", false ];
	[ "NMD Admin", format[ "You have unfrozen %1.", ( name _selectedPlayer ) ] ] call NMD_fnc_titleHint;
	[ [ "NMD Admin", format[ "%1 has unfrozen you.", ( name player ) ] ], "NMD_fnc_titleHint", _selectedPlayer ] call BIS_fnc_MP;

} else {

	[ [ _selectedPlayer, false ], "NMD_fnc_enableSimulation" ] call BIS_fnc_MP;
	_selectedPlayer setVariable [ "nmd_dialogadmin_disabled", true, true ];
	[ "NMD Admin", format[ "You have frozen %1.", ( name _selectedPlayer ) ] ] call NMD_fnc_titleHint;
	[ [ "NMD Admin", format[ "%1 has frozen you.", ( name player ) ] ], "NMD_fnc_titleHint", _selectedPlayer ] call BIS_fnc_MP;

};