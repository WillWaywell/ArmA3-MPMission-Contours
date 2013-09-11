private[ "_dialog", "_ctrlPlayers", "_selectedPlayer" ];
disableSerialization;

_dialog = findDisplay 4200;
_ctrlPlayers = _dialog displayCtrl 4201;
_selectedPlayer = ( _ctrlPlayers lbText ( lbCurSel _ctrlPlayers ) ) call NMD_fnc_playerFromName;

[ [ _selectedPlayer, ( getPos player ) ], "NMD_fnc_setPos", _selectedPlayer ] call BIS_fnc_MP;