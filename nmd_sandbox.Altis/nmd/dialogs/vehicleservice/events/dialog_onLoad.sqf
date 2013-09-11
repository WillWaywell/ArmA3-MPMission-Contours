disableSerialization;


	private[ "_dialog", "_ctrlIcon", "_class", "_icon" ];

	_dialog = findDisplay 4100;
	_ctrlIcon = _dialog displayCtrl 4101;
	_class = ( typeOf vehicle player );
	_icon = ( [ [ _class, "icon" ], "CfgVehicles" ] call NMD_fnc_configData );
	
	if( typeName ( [ _icon, "CfgVehicleIcons" ] call NMD_fnc_configData ) == typeName "" ) then {

		_icon = _icon call BIS_fnc_textureVehicleIcon;

	};

	_ctrlIcon ctrlSetText _icon;
	_ctrlIcon ctrlSetTooltip ( [ [ _class, "displayName" ], "CfgVehicles" ] call NMD_fnc_configData );
