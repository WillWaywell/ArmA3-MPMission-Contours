private [ "_unit", "_class" ];
_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_class = [ _this, 1, "", [""] ] call BIS_fnc_param;

if( _class call NMD_fnc_isGoggles ) then {
	_unit addGoggles _class;
};