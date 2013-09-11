disableSerialization;

if( ( _this select 1 ) == 0 ) then {

	private[ "_dialog", "_ctrlMap" ];

	_dialog = findDisplay 4200;
	_ctrlMap = _dialog displayCtrl 4202;

	( vehicle player ) setPosATL ( [ ( _ctrlMap ctrlMapScreenToWorld [ ( _this select 2 ), ( _this select 3 ) ] ), ( getPosATL player select 2 ) ] call BIS_fnc_arrayPush );
	
};