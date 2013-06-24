private [ "_weapon", "_muzzle", "_return" ];
_weapon = [ _this, 0, "", [""] ] call BIS_fnc_param;
_muzzle = [ _this, 1, "", [""] ] call BIS_fnc_param;

if( ( count _this ) == 1 ) exitWith {
	getArray( configFile >> "cfgWeapons" >> _weapon >> "magazines" );
};

if( ( count _this ) == 2 ) exitWith {
	getArray( configFile >> "cfgWeapons" >> _weapon >> _muzzle >> "magazines" );
};