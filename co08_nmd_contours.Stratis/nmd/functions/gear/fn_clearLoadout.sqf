private [ "_unit" ];
_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;

removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeAllAssignedItems _unit;
removeHeadgear _unit;
removeGoggles _unit;

_unit removeWeapon ( primaryWeapon _unit );
_unit removeWeapon ( secondaryWeapon _unit );
_unit removeWeapon ( handgunWeapon _unit );