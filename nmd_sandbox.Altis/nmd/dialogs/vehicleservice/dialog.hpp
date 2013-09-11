/*

	Padding: 0.5

*/

class NMD_DialogVehicleService
{
	idd = 4100;
	movingenable = 1;
	enableSimulation = 0;
	onLoad = "0 execVM 'nmd\dialogs\vehicleservice\events\dialog_onLoad.sqf'";
			
	class Controls {
	
		class MainTitle: NMD_RscText {
			moving = 1;
			colorBackground[] = { "( profileNamespace getVariable [ 'GUI_BCG_RGB_R', 0.69 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_G', 0.75 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_B', 0.5 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_A',0.8 ] )" };
			idc = -1;
			text = "NMD Vehicle Service";
			
			x = "15 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "4.5 * 					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "10 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
	
		class MainBackground: NMD_RscText {
			colorBackground[] = { 0, 0, 0, 0.8 };
			idc = -1;
			x = "15 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "5.6 * 					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "10 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "14.1 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ButtonClose: NMD_RscButtonMenuOK
		{
			text = "Close";
			
			x = "19 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "19.8 * 				( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "6 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class VehicleIcon: NMD_RscPicture
		{
			idc = 4101;
			
			x = "15.5 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "6.1 * 					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "9 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "9 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class VehicleRepair: NMD_RscButtonMenu
		{
			idc = 4102;
			colorBackground[] = { "( profileNamespace getVariable [ 'GUI_BCG_RGB_R', 0.69 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_G', 0.75 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_B', 0.5 ] )", .8 };
			text = "Repair";
			onButtonClick = "0 execVM 'nmd\dialogs\vehicleservice\events\repair_onClick.sqf'";
			
			x = "15.5 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "15.6 * 					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "9 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class VehicleRefuel: NMD_RscButtonMenu
		{
			idc = 4103;
			colorBackground[] = { "( profileNamespace getVariable [ 'GUI_BCG_RGB_R', 0.69 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_G', 0.75 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_B', 0.5 ] )", .8 };
			text = "Refuel";
			onButtonClick = "0 execVM 'nmd\dialogs\vehicleservice\events\refuel_onClick.sqf'";
			
			x = "15.5 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "16.9 * 				( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "9 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class VehicleRearm: NMD_RscButtonMenu
		{
			idc = 4104;
			colorBackground[] = { "( profileNamespace getVariable [ 'GUI_BCG_RGB_R', 0.69 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_G', 0.75 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_B', 0.5 ] )", .8 };
			text = "Rearm";
			onButtonClick = "0 execVM 'nmd\dialogs\vehicleservice\events\rearm_onClick.sqf'";
			
			x = "15.5 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "18.2 * 				( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "9 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
	};
};