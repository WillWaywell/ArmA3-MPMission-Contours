private [ "_class", "_config" ];
_class = [ _this, 0, "", [""] ] call BIS_fnc_param;
_config = configFile >> "CfgWeapons" >> _class >> "ItemInfo";

if( isClass( _config ) && { getNumber( _config >> "type" ) == 801 } ) then { true } else { false };