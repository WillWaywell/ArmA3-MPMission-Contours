/*

	Padding: 0.5

*/

class NMD_DialogAdmin
{
	idd = 4200;
	movingenable = 1;
	onLoad = "_this execVM 'nmd\dialogs\admin\events\dialog_onLoad.sqf'";
	onUnload = "_this execVM 'nmd\dialogs\admin\events\dialog_onUnload.sqf'";
	
	class Controls {
	
		class MainTitle: NMD_RscText {
			moving = 1;
			colorBackground[] = { "( profileNamespace getVariable [ 'GUI_BCG_RGB_R', 0.69 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_G', 0.75 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_B', 0.5 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_A',0.8 ] )" };
			idc = -1;
			text = "NMD Administration";
			
			x = "1 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "1 * 					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "38 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 * 					( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
	
		class MainBackground: NMD_RscText {
			colorBackground[] = { 0, 0, 0, 0.8 };
			idc = -1;
			x = "1 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "2.1 * 					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "38 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "19.2 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
	
		class ButtonClose: NMD_RscButtonMenuOK
		{
			text = "Close";
			
			x = "33 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "21.4 * 				( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "6 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ButtonInvisible: NMD_RscButtonMenu
		{
			text = "Invisible";
			onButtonClick = "0 execVM 'nmd\dialogs\admin\events\invisible_onClick.sqf'";
			
			x = "1 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "21.4 * 				( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "6 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ButtonInvincible: NMD_RscButtonMenu
		{
			text = "Invincible";
			onButtonClick = "0 execVM 'nmd\dialogs\admin\events\invincible_onClick.sqf'";
			
			x = "7.1 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "21.4 * 				( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "6 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ListPlayers: NMD_RscListbox
		{
			idc = 4201;
			onLBSelChanged = "0 execVM 'nmd\dialogs\admin\events\players_onSelect.sqf'";

			x = "1.5 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "2.6 * 					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "10 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "18.2 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ControlMap: NMD_RscMapControl
		{			
			idc = 4202;
			onMouseButtonClick = "_this execVM 'nmd\dialogs\admin\events\map_onClick.sqf'";
			tooltip = "Left click to teleport to cursor";
			
			x = "12 *					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "2.6 * 					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "26.5 *					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "15.5 * 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ButtonKill: NMD_RscButtonMenu
		{
			colorBackground[] = { "( profileNamespace getVariable [ 'GUI_BCG_RGB_R', 0.69 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_G', 0.75 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_B', 0.5 ] )", .8 };
			text = "Kill";
			onButtonClick = "0 execVM 'nmd\dialogs\admin\events\kill_onClick.sqf'";
			
			x = "12 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "18.6 *					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "6 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ButtonFreeze: NMD_RscButtonMenu
		{
			colorBackground[] = { "( profileNamespace getVariable [ 'GUI_BCG_RGB_R', 0.69 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_G', 0.75 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_B', 0.5 ] )", .8 };
			text = "Freeze";
			onButtonClick = "0 execVM 'nmd\dialogs\admin\events\freeze_onClick.sqf'";
			
			x = "18.2 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "18.6 *					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "6 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ButtonKick: NMD_RscButtonMenu
		{
			colorBackground[] = { "( profileNamespace getVariable [ 'GUI_BCG_RGB_R', 0.69 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_G', 0.75 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_B', 0.5 ] )", .8 };
			text = "Kick";
			onButtonClick = "0 execVM 'nmd\dialogs\admin\events\kick_onClick.sqf'";
			
			x = "24.4 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "18.6 *					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "6 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ButtonToPlayer: NMD_RscButtonMenu
		{
			colorBackground[] = { "( profileNamespace getVariable [ 'GUI_BCG_RGB_R', 0.69 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_G', 0.75 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_B', 0.5 ] )", .8 };
			text = "To Player";
			onButtonClick = "0 execVM 'nmd\dialogs\admin\events\toPlayer_onClick.sqf'";
			
			x = "12 * 					( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "19.8 *					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "6 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
		class ButtonToAdmin: NMD_RscButtonMenu
		{
			colorBackground[] = { "( profileNamespace getVariable [ 'GUI_BCG_RGB_R', 0.69 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_G', 0.75 ] )", "( profileNamespace getVariable [ 'GUI_BCG_RGB_B', 0.5 ] )", .8 };
			text = "To You";
			onButtonClick = "0 execVM 'nmd\dialogs\admin\events\toAdmin_onClick.sqf'";
			
			x = "18.2 * 				( ( ( safezoneW / safezoneH ) min 1.2 ) / 40 ) + ( safezoneX + (safezoneW - ( ( safezoneW / safezoneH ) min 1.2 ) ) / 2 )";
			y = "19.8 *					( (	((safezoneW / safezoneH) min 1.2) / 1.2) / 25) + ( safezoneY + (safezoneH - ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) ) / 2 )";
			w = "6 * 					( ( ( safezoneW / safezoneH) min 1.2) / 40 )";
			h = "1 *	 				( ( ( ( safezoneW / safezoneH ) min 1.2 ) / 1.2 ) / 25 )";
		};
		
	};
};