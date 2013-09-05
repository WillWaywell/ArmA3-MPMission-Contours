private[ "_dialog", "_ctrlType", "_ctrlList", "_selectedType", "_cfgVehicles" ];
disableSerialization;

_dialog = findDisplay 4000;
_ctrlType = _dialog displayCtrl 4001;
_ctrlList = _dialog displayCtrl 4002;
_selectedType = _ctrlType lbData ( lbCurSel _ctrlType );

_vehicles = [];

_cfgVehicles = ( configFile >> "CfgVehicles" );

for "_i" from 0 to ( count _cfgVehicles ) -1 do
{

	_entry = _cfgVehicles select _i;
	
	if( isClass _entry ) then
	{
	
		_class = configName _entry;
		_scope = getNumber( _entry >> "scope" );
		_vehicleClass = getText( _entry >> "vehicleClass" );
		
		if( _scope >= 2 && { _vehicleClass == _selectedType } ) then {
			
				_vehicles = _vehicles + [ _class ];
			
		};
		
	};
	
};

lbClear _ctrlList;

{

	_sideID = _x;

	{

		_config = ( configfile >> "CfgVehicles" >> _x );
		_side = getNumber( _config >> "side" );

		if( _side == _sideID ) then {
			
			_name = getText( _config >> "displayName" );
			_picture = getText( _config >> "picture" );
			_icon = getText( _config >> "icon" );

			_ctrlList lbAdd _name;
			_ctrlList lbSetTooltip [ ( lbSize _ctrlList ) -1, _name ];
			_ctrlList lbSetData [ ( lbSize _ctrlList ) -1, _x ];
			_ctrlList lbSetColor [ ( lbSize _ctrlList ) -1, ( _side call BIS_fnc_sideColor ) ];
			_ctrlList lbSetPicture [ ( lbSize _ctrlList ) -1, _picture ];
			
			_vehicles = _vehicles - [ _x ];
			
		};

		
	} foreach _vehicles;
	
} foreach [ 1, 0, 2, 3 ];

_ctrlList lbSetCurSel 0;