private [ "_weapon" ];
_weapon = [ _this, 0, "", [""] ] call BIS_fnc_param;

getArray( configFile >> "cfgWeapons" >> _weapon >> "muzzles" );