/*

	Padding: 0.5

*/

class NMD_DialogMap
{
	idd = 4300;
	enableSimulation = 0;
	
	class controlsBackground {
	
		class ControlMap: NMD_RscMapControl
		{			
			idc = 4301;
			onMouseButtonClick = "_this execVM 'nmd\dialogs\map\events\map_onClick.sqf'";
			tooltip = "Left click to teleport to cursor";
			
			x = "safezoneX";
			y = "safezoneY";
			w = "safezoneW";
			h = "safezoneH";
			
			maxSatelliteAlpha = "uinamespace getvariable ['RscDisplayStrategicMap_maxSatelliteAlpha',1]";
			alphaFadeStartScale = 100;
			alphaFadeEndScale = 100;
			scaleDefault = "uinamespace getvariable ['RscDisplayStrategicMap_scaleDefault',0.3]";
			colorBackground[] = {1,1,1,1};
			colorOutside[] = {"uinamespace getvariable ['RscDisplayStrategicMap_colorOutside_R',0]","uinamespace getvariable ['RscDisplayStrategicMap_colorOutside_G',0]","uinamespace getvariable ['RscDisplayStrategicMap_colorOutside_B',0]",1};
			colorSea[] = {0.467,0.631,0.851,0.25};
			colorCountlines[] = {0,0,0,0};
			colorMainCountlines[] = {0,0,0,0};
			colorCountlinesWater[] = {0,0,0,0};
			colorMainCountlinesWater[] = {0,0,0,0};
			colorForest[] = {1,1,1,1};
			colorRocks[] = {0,0,0,0};
			colorGrid[] = {0,0,0,0};
			colorGridMap[] = {0,0,0,0};
			ptsPerSquareTxt = 20;
			ptsPerSquareRoad = 200;
			ptsPerSquareObj = 200;
			ptsPerSquareCLn = 200;
			ptsPerSquareCost = 200;
			ptsPerSquareFor = 200;
			ptsPerSquareForEdge = 200;
			sizeExLabel = 0;
			sizeExGrid = 0;
			sizeExUnits = 0;
			sizeExNames = 0;
			sizeExInfo = 0;
			sizeExLevel = 0;
		};
	
	};
	
	class Controls {
	
		class MainTitle: NMD_RscText {
			moving = 1;
			colorBackground[] = { "( profileNamespace getVariable [ 'GUI_BCG_RGB_R', 0.69 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_G', 0.75 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_B', 0.5 ] )", 1 };
			idc = -1;
			text = "NMD Map";
			
			x = "safezoneX";
			y = "safezoneY";
			w = "safezoneW";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
	
		class ButtonClose: NMD_RscButtonMenuOK
		{
			text = "Close";
			
			x = "1 * 			( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX )";
			y = "23 * 			( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) + ( safezoneY + safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) )";
			w = "6.25 * 		( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 )";
			h = "1 * 			( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
	};
};