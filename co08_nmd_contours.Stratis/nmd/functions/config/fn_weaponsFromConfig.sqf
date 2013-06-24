private [ "_weapons", "_config", "_scope", "_parent" ];
_weapons = [];
_config = ( configFile >> "CfgWeapons" );

for "_i" from 0 to ( count _config ) -1 do
{
	_entry = _config select _i;
	
	if( isClass _entry ) then
	{
		_class = configName _entry;
		_scope = getNumber( _entry >> "scope" );
		
		if( _class call NMD_fnc_isWeapon && { _scope >=2 } ) then {
			
			_parent = configName ( inheritsFrom _entry );
			
			if( !( _parent in _weapons ) ) then {
				_weapons = _weapons + [ _class ];
			};
			
		};
	};
};

_weapons;