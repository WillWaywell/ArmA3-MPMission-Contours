private [ "_items", "_config", "_scope" ];
_items = [];
_config = ( configFile >> "CfgWeapons" );

for "_i" from 0 to ( count _config ) -1 do
{
	_entry = _config select _i;
	
	if( isClass _entry ) then
	{
		_class = configName _entry;
		_scope = getNumber( _entry >> "scope" );
		
		if( [ _class, true ] call NMD_fnc_isItem && { _scope >=2 } ) then {
			_items = _items + [ _class ];
		};
	};
};

_items;