private [ "_unit", "_weapon", "_item" ];
_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_weapon = [ _this, 1, "", [""] ] call BIS_fnc_param;
_item = [ _this, 2, "", [""] ] call BIS_fnc_param;

if( _item != "" ) then {
	switch ( _weapon ) do 
	{ 
		case ( primaryWeapon _unit ): { _unit addPrimaryWeaponItem _item };
		case ( secondaryWeapon _unit ): { _unit addSecondaryWeaponItem _item }; 
		case ( handgunWeapon _unit ): { _unit addHandgunItem _item };
	};
};