private [ "_uniforms", "_config", "_scope" ];
_uniforms = [];
_config = ( configFile >> "CfgWeapons" );

for "_i" from 0 to ( count _config ) -1 do
{
	_entry = _config select _i;
	
	if( isClass _entry ) then
	{
		_class = configName _entry;
		_scope = getNumber( _entry >> "scope" );
		
		if( ( _class call NMD_fnc_gearType ) == "uniform" && { _scope >=2 } ) then {
			_uniforms = _uniforms + [ _class ];
		};
	};
};

_uniforms;