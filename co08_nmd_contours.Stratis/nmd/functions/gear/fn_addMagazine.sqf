private [ "_unit", "_class" ];
_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_class = [ _this, 1, "", [""] ] call BIS_fnc_param;

if( typeName _class != typeName [] ) then {
	_class = [ _class ];
};

{
	if( _x call NMD_fnc_isMagazine ) then {
		_unit addMagazine _x;
		waitUntil { [ _x, ( magazines _unit ) ] call NMD_fnc_inArray };
	};
} foreach _class;