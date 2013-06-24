private [ "_class", "_config", "_specific" ];
_class = [ _this, 0, "", [""] ] call BIS_fnc_param;
_specific = [ _this, 1, false, [true] ] call BIS_fnc_param;
_config = configFile >> "CfgWeapons" >> _class;

if( _class call NMD_fnc_isWeapon ) exitWith { false };
if( !_specific && { isClass( _config >> "ItemInfo" ) } ) exitWith { true };
if( isClass( _config >> "ItemInfo" ) && !( ( getNumber( _config >> "ItemInfo" >> "type" ) ) in [ 605, 701, 801 ] ) ) exitWith { true };

false;