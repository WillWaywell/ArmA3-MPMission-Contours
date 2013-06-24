private [ "_class", "_config" ];
_class = [ _this, 0, "", [""] ] call BIS_fnc_param;
_config = configFile >> "CfgMagazines" >> _class;

if( getText( _config >> "displayName" ) != "" ) then { true } else { false };