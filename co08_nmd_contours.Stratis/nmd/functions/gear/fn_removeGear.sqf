private [ "_unit", "_class" ];
_unit = [ _this, 0, objNull, [objNull] ] call BIS_fnc_param;
_class = [ _this, 1, "", [""] ] call BIS_fnc_param;

if( _class in ( assignedItems _unit ) && !( _class call NMD_fnc_isGoggles ) ) then {
	_unit unassignItem _class;
};

switch( _class call NMD_fnc_gearType ) do
{
	case "weapon": { _unit removeWeapon _class };
	case "magazine": { _unit removeMagazine _class };
	case "uniform": { removeUniform _unit };	
	case "vest": { removeVest _unit };	
	case "backpack": { removeBackpack _unit };	
	case "headgear": { removeHeadgear _unit };	
	case "goggles": { removeGoggles _unit };	
	default { _unit removeItem _class };	
};