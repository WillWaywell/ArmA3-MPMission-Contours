private [ "_goggles", "_config", "_scope" ];
_goggles = [];
_config = ( configFile >> "CfgGlasses" );

for "_i" from 0 to ( count _config ) -1 do
{
	_entry = _config select _i;
	
	if( isClass _entry ) then
	{
		_class = configName _entry;
		_scope = getNumber( _entry >> "scope" );
		
		if( _scope >=2 ) then {
			_goggles = _goggles + [ _class ];
		};
	};
};

_goggles;