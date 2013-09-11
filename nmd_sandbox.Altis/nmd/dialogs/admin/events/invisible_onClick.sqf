private[ "_isInvisible" ];
disableSerialization;

_isInvisible = player getVariable [ "nmd_dialogadmin_invisible", false ];

if( _isInvisible ) then {

	[ [ player, false ], "NMD_fnc_hideObject" ] call BIS_fnc_MP;
	[ "NMD Admin", "You are visible" ] call NMD_fnc_titleHint;

} else {

	[ [ player, true ], "NMD_fnc_hideObject" ] call BIS_fnc_MP;
	[ "NMD Admin", "You are invisible" ] call NMD_fnc_titleHint;

};

player setVariable [ "nmd_dialogadmin_invisible", !_isInvisible ];