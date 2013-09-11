private [ "_class", "_root", "_key", "_config", "_data" ];

_key = [ _this, 0, "", ["",[]] ] call BIS_fnc_param;
_root = [ _this, 1, "", [""] ] call BIS_fnc_param;
_data = false;

if( typeName _key == typeName "" ) then {

	_key = [ _key ];

};

_config = "configFile";

{

	_config = format[ "%1 >> '%2'", _config, _x ];

} foreach [ _root ] + _key;


_config = call compile _config;

if( isText _config ) then {

	_data = getText _config;

};

if( isNumber _config ) then {

	_data = getNumber _config;

};

if( isArray _config ) then {

	_data = getArray _config;

};

if( isClass _config ) then {

	_data = _config;

};

_data