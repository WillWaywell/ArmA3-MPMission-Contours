private [ "_vests", "_config", "_scope" ];
_vests = [];
_config = ( configFile >> "CfgWeapons" );

for "_i" from 0 to ( count _config ) -1 do
{
	_entry = _config select _i;
	
	if( isClass _entry ) then
	{
		_class = configName _entry;
		_scope = getNumber( _entry >> "scope" );
		
		if( ( _class call NMD_fnc_gearType ) == "vest" && { _scope >=2 } ) then {
			_vests = _vests + [ _class ];
		};
	};
};

_vests;