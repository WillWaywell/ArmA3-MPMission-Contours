private[ "_dialog", "_ctrlPlayers", "_ctrlMap", "_selectedPlayer" ];
disableSerialization;

_dialog = findDisplay 4200;
_ctrlPlayers = _dialog displayCtrl 4201;
_ctrlMap = _dialog displayCtrl 4202;
_selectedPlayer = ( _ctrlPlayers lbText ( lbCurSel _ctrlPlayers ) ) call NMD_fnc_playerFromName;

deleteMarkerLocal "NMD_DialogAdmin_SelectedPlayer";
_marker = createMarkerLocal [ "NMD_DialogAdmin_SelectedPlayer", ( getPos _selectedPlayer ) ];
_marker setMarkerShapeLocal "ICON";
_marker setMarkerTypeLocal "b_inf";
_marker setMarkerTextLocal ( name _selectedPlayer );

[ _selectedPlayer, _marker, _ctrlPlayers, ( lbCurSel _ctrlPlayers ) ] spawn {

	while { ( lbCurSel ( _this select 2 ) ) == ( _this select 3 ) } do {

		( _this select 1 ) setMarkerPosLocal ( getPos ( _this select 0 ) );
		sleep .2;
	
	};

};

if( !ctrlMapAnimDone _ctrlMap ) then {

	ctrlMapAnimClear _ctrlMap;

};

_ctrlMap ctrlMapAnimAdd [ .7, 0.1, ( getPos _selectedPlayer ) ];
ctrlMapAnimCommit _ctrlMap;