disableSerialization;

if( ( _this select 1 ) == 0 ) then {

	private[ "_dialog", "_ctrlMap" ];

	_dialog = findDisplay 4300;
	_ctrlMap = _dialog displayCtrl 4301;
	
	( vehicle player ) setPosATL ( [ ( _ctrlMap ctrlMapScreenToWorld [ ( _this select 2 ), ( _this select 3 ) ] ), ( getPosATL player select 2 ) ] call BIS_fnc_arrayPush );
	closeDialog 0;
	
};