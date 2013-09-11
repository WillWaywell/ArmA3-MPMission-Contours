/*

	Padding: 0.5

*/

class NMD_DialogMenu
{
	idd = 4400;
	movingenable = 1;
	enableSimulation = 0;
	onLoad = "0 execVM 'nmd\dialogs\menu\events\dialog_onLoad.sqf'";
			
	class Controls {
	
		class MainTitle: NMD_RscText {
			moving = 1;
			colorBackground[] = { "( profileNamespace getVariable [ 'GUI_BCG_RGB_R', 0.69 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_G', 0.75 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_B', 0.5 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_A',0.8 ] )" };
			idc = -1;
			text = "NMD Menu";
			
			x = "15 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "6 * 					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "10 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
	
		class MainBackground: NMD_RscText {
			colorBackground[] = { 0, 0, 0, 0.8 };
			idc = -1;
			x = "15 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "7.1 * 					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "10 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "10.9 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ButtonClose: NMD_RscButtonMenuOK
		{
			text = "Close";
			
			x = "19 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "18.1 * 				( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "6 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class PictureNMD: NMD_RscPicture
		{
			text = "nmd\nmd.paa";
			
			x = "15.5 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "7.6 * 					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "9 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "4.5 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ButtonGarage: NMD_RscButtonMenu
		{
			idc = 4401;
			colorBackground[] = { "( profileNamespace getVariable [ 'GUI_BCG_RGB_R', 0.69 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_G', 0.75 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_B', 0.5 ] )", .8 };
			text = "Garage";
			onButtonClick = "'NMD_DialogGarage' execVM 'nmd\dialogs\menu\events\createDialog_onClick.sqf'";
			
			x = "15.5 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "12.6 * 				( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "9 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ButtonMap: NMD_RscButtonMenu
		{
			idc = 4402;
			colorBackground[] = { "( profileNamespace getVariable [ 'GUI_BCG_RGB_R', 0.69 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_G', 0.75 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_B', 0.5 ] )", .8 };
			text = "Map";
			onButtonClick = "'NMD_DialogMap' execVM 'nmd\dialogs\menu\events\createDialog_onClick.sqf'";
			
			x = "15.5 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "13.9 * 				( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "9 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ButtonVehicleService: NMD_RscButtonMenu
		{
			idc = 4403;
			colorBackground[] = { "( profileNamespace getVariable [ 'GUI_BCG_RGB_R', 0.69 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_G', 0.75 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_B', 0.5 ] )", .8 };
			text = "Vehicle Service";
			onButtonClick = "'NMD_DialogVehicleService' execVM 'nmd\dialogs\menu\events\createDialog_onClick.sqf'";
			
			x = "15.5 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "15.2 * 				( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "9 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ButtonAdmin: NMD_RscButtonMenu
		{
			idc = 4404;
			colorBackground[] = { 1, 0, 0, .6 };
			text = "Admin";
			onButtonClick = "'NMD_DialogAdmin' execVM 'nmd\dialogs\menu\events\createDialog_onClick.sqf'";
			
			x = "15.5 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "16.5 * 				( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "9 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
	};
};