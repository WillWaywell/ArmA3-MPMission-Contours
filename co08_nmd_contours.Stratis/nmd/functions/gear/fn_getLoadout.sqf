private [ "_source", "_gear" ];
_source = [ _this, 0, objNull, [objNull,""] ] call BIS_fnc_param;

switch ( typename _source ) do {

	case ( typeName objNull ): {
		_gear = [

			assignedItems _source,
			headgear _source,
			goggles _source,
			
			[ primaryWeapon _source, primaryWeaponItems _source ],
			[ secondaryWeapon _source, secondaryWeaponItems _source ],
			[ handgunWeapon _source, handgunItems _source ],
			
			[ uniform _source, uniformItems _source ],
			[ vest _source, vestItems _source ],
			[ backpack _source, backpackItems _source ]
			
		];
	};
	
	case ( typeName "" ): {
		_source = ( missionConfigFile >> "CfgLoadouts" >> _source );
	
		_gear = [

			getArray( _source >> "assignedItems" ),
			getText( _source >> "headgear" ),
			getText( _source >> "goggles" ),
			
			[ getText( _source >> "primaryWeapon" ), getArray( _source >> "primaryWeaponItems" ) ],
			[ getText( _source >> "secondaryWeapon" ), getArray( _source >> "secondaryWeaponItems" ) ],
			[ getText( _source >> "handgunWeapon" ), getArray( _source >> "handgunWeaponItems" ) ],
			
			[ getText( _source >> "uniform" ), getArray( _source >> "uniformItems" ) ],
			[ getText( _source >> "vest" ), getArray( _source >> "vestItems" ) ],
			[ getText( _source >> "backpack" ), getArray( _source >> "backpackItems" ) ]
			
		];
	};
	
};

_gear