private[ "_isInvincible" ];
disableSerialization;

_isInvincible = player getVariable [ "nmd_dialogadmin_invincible", false ];

if( _isInvincible ) then {

	player allowDamage true;
	[ "NMD Admin", "You are vulnerable" ] call NMD_fnc_titleHint;

} else {

	player allowDamage false;
	[ "NMD Admin", "You are invincible" ] call NMD_fnc_titleHint;

};

player setVariable [ "nmd_dialogadmin_invincible", !_isInvincible ];