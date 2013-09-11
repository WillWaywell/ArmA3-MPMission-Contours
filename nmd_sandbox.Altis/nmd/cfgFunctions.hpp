class NMD
{

	class init
	{
		class config { file="nmd\config.sqf"; postInit = 1; };
	};
		
	class config
	{
		file = "nmd\functions\config";
		class configData;
	};
	
	class environment
	{
		class enableEnvironment;
		class setFog;
		class setLightning;
		class setObjectViewDistance;
		class setOvercast;
		class setRain;
		class setShadowDistance;
		class setTerrainGrid;
		class setTime;
		class setWaves;
		class setWind;
		class setGusts;
	};
	
	class geometry
	{
		file = "nmd\functions\geometry";
		class posFromDir;
		class setPos;
	};
		
	class hints
	{
		file = "nmd\functions\hints";
		class titleHint;
	};
	
	class misc
	{
		file = "nmd\functions\misc";
		class toBool;
	};
	
	class mission
	{
		file = "nmd\functions\mission";
		class missionParam;
	};
	
	class players
	{
		file = "nmd\functions\players";
		class listPlayers;
		class playerFromName;
		class setPlayerRespawnTime;
	};
	
	class units
	{
		file = "nmd\functions\units";
		class cleanupUnit;
		class enableSimulation;
		class hideBody;
		class hideObject;
		class setObjectTexture;
	};
	
};