private [ "_unit", "_class", "_loadMag", "_magazine" ];
_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_class = [ _this, 1, "", [""] ] call BIS_fnc_param;
_loadMag = [ _this, 2, false, [true] ] call BIS_fnc_param;

if( _class call NMD_fnc_isWeapon ) then {
	if ( _loadMag ) then {
		_magazine = ( ( [ _class ] call NMD_fnc_getWeaponMagazines ) select 0 );
		[ _unit, _magazine ] call NMD_fnc_addMagazine;
		
		{
			if ( _x != "this" ) then {
				_magazine = ( ( [ _class, _x ] call NMD_fnc_getWeaponMagazines ) select 0 );
				[ _unit, _magazine ] call NMD_fnc_addMagazine;
			};
		} forEach ( [ _class ] call NMD_fnc_getWeaponMuzzles );
	};

	_unit addWeapon _class;
	waitUntil { _class in ( weapons _unit ) }; 
};