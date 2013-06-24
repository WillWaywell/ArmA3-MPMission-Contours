private [ "_magazines", "_config", "_scope" ];
_magazines = [];
_config = ( configFile >> "CfgMagazines" );

for "_i" from 0 to ( count _config ) -1 do
{
	_entry = _config select _i;
	
	if( isClass _entry ) then
	{
		_class = configName _entry;
		_scope = getNumber( _entry >> "scope" );
		
		if( ( _class call NMD_fnc_isMagazine ) && { _scope >=1 && ( getText( _entry >> "picture" ) != "" ) } ) then {
			_magazines = _magazines + [ _class ];
		};
	};
};

_magazines;