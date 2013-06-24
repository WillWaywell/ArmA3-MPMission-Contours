private [ "_class", "_config" ];
_class = [ _this, 0, "", [""] ] call BIS_fnc_param;
_config = configFile >> "CfgGlasses" >> _class;

if( isClass( _config ) ) then { true } else { false };