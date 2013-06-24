private [ "_class", "_root" ];
_class = [ _this, 0, "", [""] ] call BIS_fnc_param;
_root = _class call NMD_fnc_gearRoot;

getText( configFile >> _root >> _class >> "picture" );