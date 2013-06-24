private [ "_vest", "_containerclass" ];
_vest = [ _this, 0, "", [""] ] call BIS_fnc_param;

_containerclass = getText( configFile >> "cfgWeapons" >> _vest >> "ItemInfo" >> "containerclass" );
getNumber( configFile >> "cfgVehicles" >> _containerclass >> "maximumLoad" );