private [ "_unit", "_gear" ];
_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;

_gear = [

	assignedItems _unit,
	headgear _unit,
	goggles _unit,
	
	[ primaryWeapon _unit, primaryWeaponMagazine _unit, primaryWeaponItems _unit ],
	[ secondaryWeapon _unit, secondaryWeaponMagazine _unit, secondaryWeaponItems _unit ],
	[ handgunWeapon _unit, handgunMagazine _unit, handgunItems _unit ],
	
	[ uniform _unit, uniformItems _unit ],
	[ vest _unit, vestItems _unit ],
	[ backpack _unit, backpackItems _unit ]
	
];

_gear