private[ "_dialog", "_ctrlList", "_ctrlIcon", "_ctrlColor", "_ctrlFaction", "_selected", "_class", "_icon", "_faction", "_colors" ];
disableSerialization;

_dialog = findDisplay 4000;
_ctrlList = _dialog displayCtrl 4002;
_ctrlIcon = _dialog displayCtrl 4003;
_ctrlColor = _dialog displayCtrl 4004;
_ctrlFaction = _dialog displayCtrl 4005;
_selected = lbCurSel _ctrlList;
if( _selected == -1 ) exitWith {};
_class = _ctrlList lbData _selected;
_icon = ( [ [ _class, "icon" ], "CfgVehicles" ] call NMD_fnc_configData );
_faction = ( [ [ _class, "faction" ], "CfgVehicles" ] call NMD_fnc_configData );
_colors = [];

if( typeName ( [ [ _class, _icon ], "CfgVehicleIcons" ] call NMD_fnc_configData ) == typeName "" ) then {

	_icon = _icon call BIS_fnc_textureVehicleIcon;

};

_ctrlIcon ctrlSetText _icon;
_ctrlIcon ctrlSetTooltip ( [ [ _class, "displayName" ], "CfgVehicles" ] call NMD_fnc_configData );
_ctrlIcon ctrlSetTextColor ( ( [ [ _class, "side" ], "CfgVehicles" ] call NMD_fnc_configData ) call BIS_fnc_sideColor );

_ctrlFaction ctrlSetText ( [ [ _faction, "icon" ], "CfgFactionClasses" ] call NMD_fnc_configData );
_ctrlFaction ctrlSetTooltip ( [ [ _faction, "displayName" ], "CfgFactionClasses" ] call NMD_fnc_configData );

_colors = [];

switch ( _class ) do {

	case "C_Offroad_01_F": {
	
		_colors = [ 
		
			[ "Red", [ "\A3\soft_F\Offroad_01\Data\Offroad_01_ext_co.paa", "\A3\soft_F\Offroad_01\Data\Offroad_01_ext_co.paa" ] ], 
			[ "Yellow", [ "\A3\soft_F\Offroad_01\Data\Offroad_01_ext_BASE01_CO.paa", "\A3\soft_F\Offroad_01\Data\Offroad_01_ext_BASE01_CO.paa" ] ], 
			[ "White", [ "\A3\soft_F\Offroad_01\Data\Offroad_01_ext_BASE02_CO.paa", "\A3\soft_F\Offroad_01\Data\Offroad_01_ext_BASE02_CO.paa" ] ], 
			[ "Blue", [ "\A3\soft_F\Offroad_01\Data\Offroad_01_ext_BASE03_CO.paa", "\A3\soft_F\Offroad_01\Data\Offroad_01_ext_BASE03_CO.paa" ] ], 
			[ "Dark Red", [ "\A3\soft_F\Offroad_01\Data\Offroad_01_ext_BASE04_CO.paa", "\A3\soft_F\Offroad_01\Data\Offroad_01_ext_BASE04_CO.paa" ] ], 
			[ "Black", [ "\A3\soft_F\Offroad_01\Data\Offroad_01_ext_BASE05_CO.paa", "\A3\soft_F\Offroad_01\Data\Offroad_01_ext_BASE05_CO.paa" ] ]
			
		];
	
	};
	
	case "C_Hatchback_01_sport_F": {
	
		_colors = [ 
		
			[ "Red", "\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_SPORT01_CO.paa" ], 
			[ "Cyan", "\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_SPORT02_CO.paa" ], 
			[ "Orange", "\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_SPORT03_CO.paa" ], 
			[ "White", "\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_SPORT04_CO.paa" ], 
			[ "Brown", "\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_SPORT05_CO.paa" ], 
			[ "Green", "\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_SPORT06_CO.paa" ]
			
		];
	
	};
	
	case "C_Hatchback_01_F": {
	
		_colors = [ 
		
			[ "White", "\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_CO.paa" ], 
			[ "Beige", "\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_BASE01_CO.paa" ], 
			[ "Green", "\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_BASE02_CO.paa" ], 
			[ "Blue", "\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_BASE03_CO.paa" ], 
			[ "Dark Blue", "\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_BASE04_CO.paa" ], 
			[ "Tan", "\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_BASE05_CO.paa" ], 
			[ "Yellow", "\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_BASE06_CO.paa" ], 
			[ "Grey", "\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_BASE07_CO.paa" ], 
			[ "Dark Grey", "\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_BASE08_CO.paa" ], 
			[ "Black", "\A3\soft_f_gamma\Hatchback_01\data\Hatchback_01_ext_BASE09_CO.paa" ]
			
		];
	
	};
	
	case "C_SUV_01_F": {
	
		_colors = [ 
		
			[ "Red", "\A3\Soft_F_Gamma\SUV_01\Data\SUV_01_ext_CO.paa" ], 
			[ "Black", "\A3\Soft_F_Gamma\SUV_01\Data\SUV_01_ext_02_CO.paa" ], 
			[ "Silver", "\A3\Soft_F_Gamma\SUV_01\Data\SUV_01_ext_03_CO.paa" ], 
			[ "Orange", "\A3\Soft_F_Gamma\SUV_01\Data\SUV_01_ext_04_CO.paa" ]
			
		];
	
	};
	
	case "C_Quadbike_01_F": {
	
		_colors = [ 
		
			[ "Black", [ "\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_CIV_BLACK_CO.paa", "\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_wheel_CIVBLACK_CO.paa" ] ], 
			[ "Blue", [ "\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_CIV_BLUE_CO.paa", "\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_wheel_CIVBLUE_CO.paa" ] ], 
			[ "Red", [ "\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_CIV_RED_CO.paa", "\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_wheel_CIVRED_CO.paa" ] ], 
			[ "White", [ "\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_CIV_WHITE_CO.paa", "\A3\Soft_F_Beta\Quadbike_01\Data\Quadbike_01_wheel_CIVWHITE_CO.paa" ] ]
			
		];
	
	};
		
	case "C_Van_01_transport_F": {
	
		_colors = [ 
		
			[ "White", [ "\A3\soft_f_gamma\van_01\Data\van_01_ext_CO.paa", "\A3\soft_f_gamma\van_01\Data\van_01_tank_CO.paa" ] ], 
			[ "Red", [ "\A3\soft_f_gamma\van_01\Data\van_01_ext_red_CO.paa", "\A3\soft_f_gamma\van_01\Data\van_01_tank_red_CO.paa" ] ]
			
		];
	
	};
	
	case "C_Van_01_box_F": {
	
		_colors = [ 
		
			[ "White", [ "\A3\soft_f_gamma\van_01\Data\van_01_ext_CO.paa", "\A3\soft_f_gamma\van_01\Data\van_01_tank_CO.paa" ] ], 
			[ "Red", [ "\A3\soft_f_gamma\van_01\Data\van_01_ext_red_CO.paa", "\A3\soft_f_gamma\van_01\Data\van_01_tank_red_CO.paa" ] ]
			
		];
	
	};
	
	case "I_G_Van_01_transport_F": {
	
		_colors = [ 
		
			[ "White", [ "\A3\soft_f_gamma\van_01\Data\van_01_ext_CO.paa", "\A3\soft_f_gamma\van_01\Data\van_01_tank_CO.paa" ] ], 
			[ "Red", [ "\A3\soft_f_gamma\van_01\Data\van_01_ext_red_CO.paa", "\A3\soft_f_gamma\van_01\Data\van_01_tank_red_CO.paa" ] ]
			
		];
	
	};

};

lbClear _ctrlColor;

if( count _colors != 0 ) then {

	{

		_ctrlColor lbAdd ( _x select 0 );
		_ctrlColor lbSetData [ ( lbSize _ctrlColor ) -1,  str( _x select 1 ) ];

	} foreach [ [ "", "" ] ] + _colors;
	
	_ctrlColor lbSetCurSel 0;
	_ctrlColor ctrlShow true;


} else {

	_ctrlColor ctrlShow false;

};