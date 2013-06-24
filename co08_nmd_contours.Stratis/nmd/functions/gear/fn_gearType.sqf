private [ "_class", "_config" ];
_class = [ _this, 0, "", [""] ] call BIS_fnc_param;
_config = configFile >> "CfgWeapons" >> _class;

if( _class call NMD_fnc_isWeapon ) exitWith {
	"weapon";
};

if( _class call NMD_fnc_isMagazine ) exitWith {
	"magazine";
};

if( _class call NMD_fnc_isBackpack ) exitWith {
	"backpack";
};

if( _class call NMD_fnc_isGoggles ) exitWith {
	"goggles";
};

if( isClass( _config >> "ItemInfo" ) ) exitWith {

	switch( getNumber( _config >> "ItemInfo" >> "type" ) ) do 
	{
		case 0: { "tool" };
		case 101: { "muzzle" };
		case 201: { "optic" };
		case 301: { "attachment" };
		case 401: { "misc" };
		case 605: { "headgear" };
		case 616: { "nvision" };
		case 701: { "vest" };
		case 801: { "uniform" };
		default { "unknown" };
	};
	
};

"";