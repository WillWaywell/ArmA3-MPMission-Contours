private[ "_dialog", "_ctrlType", "_ctrlList", "_selectedType", "_vehicles", "_cfgVehicles" ];
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

	_side = [ [ _x, "side" ], "CfgVehicles" ] call NMD_fnc_configData;

	_name = [ [ _x, "displayName" ], "CfgVehicles" ] call NMD_fnc_configData;
	_picture = [ [ _x, "picture" ], "CfgVehicles" ] call NMD_fnc_configData;
	_icon = [ [ _x, "icon" ], "CfgVehicles" ] call NMD_fnc_configData;

	_ctrlList lbAdd _name;
	_ctrlList lbSetTooltip [ ( lbSize _ctrlList ) -1, _x ];
	_ctrlList lbSetData [ ( lbSize _ctrlList ) -1, _x ];
	_ctrlList lbSetPicture [ ( lbSize _ctrlList ) -1, _picture ];
	
	_vehicles = _vehicles - [ _x ];
	
} foreach _vehicles;

lbSort _ctrlList;
_ctrlList lbSetCurSel 0;