private [ "_class", "_config" ];
_class = [ _this, 0, "", [""] ] call BIS_fnc_param;
_config = configFile >> "CfgVehicles" >> _class;

if( getNumber( _config >> "isBackpack" ) == 1 ) then { true } else { false };