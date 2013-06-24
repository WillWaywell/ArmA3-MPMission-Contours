private [ "_unit", "_class", "_return" ];
_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_class = [ _this, 1, "", [""] ] call BIS_fnc_param;
_clear = [ _this, 2, false, [true] ] call BIS_fnc_param;
_return = false;

if( _class call NMD_fnc_isBackpack ) then {
	_unit addBackpack _class;
	waitUntil { backpack _unit == _class };
	
	if( _clear ) then {
		clearAllItemsFromBackpack _unit;
	};
	
	_return = true;
};

_return;