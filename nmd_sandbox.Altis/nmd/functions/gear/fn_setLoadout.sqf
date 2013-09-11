private [ "_unit", "_gear", "_placeholderCount" ];

_unit = [ _this, 0, player, [objNull] ] call BIS_fnc_param;
_gear = [ _this, 1, [], [[]] ] call BIS_fnc_param;
_placeholderCount = 0;


// Temp item storage
removeBackpack _unit;
[ _unit, "B_AssaultPack_blk", true ] call MPF_fnc_addBackpack;


// Assigned Items
removeAllAssignedItems _unit;
[ _unit, ( _gear select 0 ), true ] call MPF_fnc_addGear;


// Headgear
removeHeadgear _unit;
[ _unit, ( _gear select 1 ) ] call MPF_fnc_addHeadgear;


// Goggles
removeGoggles _unit;
[ _unit, ( _gear select 2 ) ] call MPF_fnc_addGoggles;


// Primary Weapon
_unit removeWeapon ( primaryWeapon _unit );
if( ( [ _unit, ( ( _gear select 3 ) select 0 ), true ] call MPF_fnc_addWeapon ) ) then {
	{ [ _unit, ( primaryWeapon _unit ), _x ] call MPF_fnc_addWeaponItem } foreach ( ( _gear select 3 ) select 1 );
};


// Secondary Weapon
_unit removeWeapon ( secondaryWeapon _unit );
if( ( [ _unit, ( ( _gear select 4 ) select 0 ), true ] call MPF_fnc_addWeapon ) ) then {
	{ [ _unit, ( secondaryWeapon _unit ), _x ] call MPF_fnc_addWeaponItem } foreach ( ( _gear select 4 ) select 1 );
};


// Handgun Weapon
_unit removeWeapon ( handgunWeapon _unit );
if( ( [ _unit, ( ( _gear select 5 ) select 0 ), true ] call MPF_fnc_addWeapon ) ) then {
	{ [ _unit, ( handgunWeapon _unit ), _x ] call MPF_fnc_addWeaponItem } foreach ( ( _gear select 5 ) select 1 );
};


// Select a Weapon
[ _unit ] call MPF_fnc_selectWeapon;


// Uniform
removeUniform _unit;
if( ( [ _unit, ( ( _gear select 6 ) select 0 ) ] call MPF_fnc_addUniform ) ) then {
	[ _unit, ( ( _gear select 6 ) select 1 ) ] call MPF_fnc_addGear;
	
	while { loadUniform _unit < 1 } do {
		_unit addItem "ItemWatch";
		_placeholderCount = _placeholderCount + 1;
	};	
};


// Vest
removeVest _unit;
if( ( [ _unit, ( ( _gear select 7 ) select 0 ) ] call MPF_fnc_addVest ) ) then {
	[ _unit, ( ( _gear select 7 ) select 1 ) ] call MPF_fnc_addGear;
	
	if( ( [ ( vest _unit ) ] call MPF_fnc_getVestMaxLoad ) != 0 ) then {
		while { loadVest _unit < 1 } do {
			_unit addItem "ItemWatch";
			_placeholderCount = _placeholderCount + 1;
		};	
	};
};


// Backpack
removeBackpack _unit;
if( ( [ _unit, ( ( _gear select 8 ) select 0 ), true ] call MPF_fnc_addBackpack ) ) then {
	[ _unit, ( ( _gear select 8 ) select 1 ) ] call MPF_fnc_addGear;
};


// Remove Placeholder Items
for [ { _i = 0 }, {_i < _placeholderCount}, { _i =_i + 1 } ] do
{
    _unit removeItem "ItemWatch"; 
};