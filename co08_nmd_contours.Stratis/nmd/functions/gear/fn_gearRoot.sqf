private [ "_class", "_root" ];
_class = [ _this, 0, "", [""] ] call BIS_fnc_param;

if( _class call NMD_fnc_isMagazine ) then {
	_root = "CfgMagazines";
} else {
	if( _class call NMD_fnc_isBackpack ) then {
		_root = "CfgVehicles";
	} else {
		if( _class call NMD_fnc_isGoggles ) then {
			_root = "CfgGlasses";
		} else {
			_root = "CfgWeapons";
		}
	}
};

_root;