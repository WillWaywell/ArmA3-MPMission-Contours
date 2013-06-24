private [ "_class", "_config" ];
_class = [ _this, 0, "", [""] ] call BIS_fnc_param;
_config = configFile >> "CfgWeapons" >> _class;

if( isClass( _config >> "WeaponSlotsInfo" ) && ( getNumber( _config >> "showempty" ) ) == 1 ) then { true } else { false };