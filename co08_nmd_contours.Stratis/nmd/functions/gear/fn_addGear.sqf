private [ "_unit", "_class", "_assign" ];
_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_class = [ _this, 1, "", ["",[]] ] call BIS_fnc_param;
_assign = [ _this, 2, false, [true] ] call BIS_fnc_param;

if( typeName _class != typeName [] ) then {
	_class = [ _class ];
};

{
	switch( _x call NMD_fnc_gearType ) do
	{
		case "weapon": { [ _unit, _x ] call NMD_fnc_addWeapon };
		case "magazine": { [ _unit, _x ] call NMD_fnc_addMagazine };
		case "uniform": { [ _unit, _x ] call NMD_fnc_addUniform  };	
		case "vest": { [ _unit, _x ] call NMD_fnc_addVest };	
		case "backpack": { [ _unit, _x ] call NMD_fnc_addBackpack };	
		case "headgear": { [ _unit, _x ] call NMD_fnc_addHeadgear };	
		case "goggles": { [ _unit, _x ] call NMD_fnc_addGoggles };	
		default { [ _unit, _x ] call NMD_fnc_addItem };	
	};
	
	if( _assign ) then {
		_unit assignItem _x;
	};
} foreach _class;