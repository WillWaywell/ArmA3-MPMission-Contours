private [ "_unit", "_weapon", "_muzzles" ];
_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_weapon = [ _this, 1, [ ( primaryWeapon _unit ), ( secondaryWeapon _unit ), ( handgunWeapon _unit ) ], ["",[]] ] call BIS_fnc_param;

if( typename _weapon != typename [] ) then {
	_weapon = [ _weapon ];
};

{
	if( _x != "" ) exitWith {
		_muzzles = ( [ _x ] call NMD_fnc_getWeaponMuzzles );
		
		if ( _muzzles select 0 != "this" ) then { 
			_x = _muzzles select 0;
		};
		
		_unit selectWeapon _x;
	};

} foreach _weapon;