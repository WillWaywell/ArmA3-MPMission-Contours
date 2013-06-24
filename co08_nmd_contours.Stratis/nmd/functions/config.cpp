class NMD
{
	class ai
	{
		file = "nmd\functions\ai";
		class wpTaskPatrol;
	};
	
	class config
	{
		file = "nmd\functions\config";
		class backpacksFromConfig;
		class gogglesFromConfig;
		class headgearFromConfig;
		class itemsFromConfig;
		class magazinesFromConfig;
		class uniformsFromConfig;
		class vestsFromConfig;
		class weaponsFromConfig;
	};
	
	class gear
	{
		file = "nmd\functions\gear";
		class addBackpack;
		class addGear;
		class addGoggles;
		class addHeadgear;
		class addItem;
		class addMagazine;
		class addUniform;
		class addVest;
		class addWeapon;
		class addWeaponItem;
		class clearLoadout;
		class gearIcon;
		class gearName;
		class gearRoot;
		class gearType;
		class getLoadout;
		class getVestMaxLoad;
		class getWeaponMagazines;
		class getWeaponMuzzles;
		class isBackpack;
		class isGoggles;
		class isHeadgear;
		class isItem;
		class isMagazine;
		class isUniform;
		class isVest;
		class isWeapon;
		class removeGear;
		class selectWeapon;
		class setLoadout;
	};
	
	class misc
	{
		file = "nmd\functions\misc";
		class groupAlive;
		class inArray;
		class toBool;
		class waitUntil;
	};
	
	class mission
	{
		file = "nmd\functions\mission";
		class missionParam;
	};
	
	class tasks
	{
		file = "nmd\functions\tasks";
		class taskSucceeded;
		class taskFailed;
		class taskCancelled;
	};
};