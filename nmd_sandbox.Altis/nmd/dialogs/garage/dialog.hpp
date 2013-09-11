/*

	Padding: 0.5

*/

class NMD_DialogGarage
{
	idd = 4000;
	movingenable = 1;
	enableSimulation = 0;
	onLoad = "0 execVM 'nmd\dialogs\garage\events\dialog_onLoad.sqf'";
			
	class Controls {
	
		class MainTitle: NMD_RscText {
			moving = 1;
			colorBackground[] = { "( profileNamespace getVariable [ 'GUI_BCG_RGB_R', 0.69 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_G', 0.75 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_B', 0.5 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_A',0.8 ] )" };
			idc = -1;
			text = "NMD Garage";
			
			x = "8 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "4 * 					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "24 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
	
		class MainBackground: NMD_RscText {
			colorBackground[] = { 0, 0, 0, 0.8 };
			idc = -1;
			x = "8 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "5.1 * 					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "24 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "12.8 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ButtonClose: NMD_RscButtonMenuOK
		{
			text = "Close";
			
			x = "26 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "18 * 					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "6 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ButtonCreate: NMD_RscButtonMenu
		{
			text = "Create";
			onButtonClick = "0 execVM 'nmd\dialogs\garage\events\create_onClick.sqf'";
			
			x = "19.9 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "18 * 					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "6 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ComboColor: NMD_RscCombo
		{
			idc = 4004;
			
			x = "8 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "18 * 					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "6 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ComboType: NMD_RscCombo
		{
			idc = 4001;
			onLBSelChanged = "0 execVM 'nmd\dialogs\garage\events\type_onSelect.sqf'";
			
			x = "8.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "5.6 * 					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "10 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ListVehicles: NMD_RscListbox
		{
			idc = 4002;
			onLBSelChanged = "0 execVM 'nmd\dialogs\garage\events\vehicles_onSelect.sqf'";
			onLBDblClick = "0 execVM 'nmd\dialogs\garage\events\create_onClick.sqf'";
			sizeEx = "( ( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 ) * 0.8 )";

			x = "8.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "6.9 * 					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "10 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "10.5 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class VehicleIcon: NMD_RscPicture
		{
			idc = 4003;
			
			x = "20.25 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "6.5 *					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "10 *					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "10 *					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class FactionIcon: NMD_RscPicture
		{
			idc = 4005;
			colorBackground[] = { "(profileNamespace getVariable ['GUI_BCG_RGB_R',0.69])", "(profileNamespace getVariable ['GUI_BCG_RGB_G',0.75])", "(profileNamespace getVariable ['GUI_BCG_RGB_B',0.5])", 0.85 };
			
			x = "30 *	 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "5.6 *					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "1.5 *					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1.5 *					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
	};
};