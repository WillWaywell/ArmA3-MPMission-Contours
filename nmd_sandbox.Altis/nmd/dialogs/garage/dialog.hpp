/*

	Padding: 0.2

*/

class NMD_DialogGarage
{
	idd = 4000;
	movingenable = 1;
	onLoad = "0 execVM 'nmd\dialogs\garage\events\dialog_onLoad.sqf'";
	
	class ControlsBackground {
		class TitleBackground: NMD_RscText {
			colorBackground[] = { "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])", 0.85 };
			idc = -1;
			x = 0.15;
			y = 0.2;
			w = 0.7;
			h = ( 1 / 25 );
		};
		
		class MainBackground: NMD_RscText {
			colorBackground[] = { 0, 0, 0, 0.8 };
			idc = -1;
			x = 0.15;
			y = 0.2 + ( 11 / 250 );
			w = 0.7;
			h = 0.45;
		};
	};
		
	class Controls {
	
		class Title : NMD_RscTitle {
			moving = 1;
		
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "NMD Garage";
			
			x = 0.15; y = 0.2;
			w = 0.7; h = (1 / 25);
		};
		
		class ButtonClose: NMD_RscButtonMenuOK
		{
			text = "Close";
			
			x = ( 0.85 - 0.15 ); y = 0.69 + ( 0.008 );
			w = 0.15; h = 0.04;
		};
		
		class ButtonCreate: NMD_RscButtonMenu
		{
			text = "Create";
			onButtonClick = "0 execVM 'nmd\dialogs\garage\events\create_onClick.sqf'";
			
			x = ( 0.85 - 0.3 ) - 0.004; y = 0.69 + ( 0.008 );
			w = 0.15; h = 0.04;
		};
		
		class VehicleType: NMD_RscCombo
		{
			idc = 4001;
			onLBSelChanged = "0 execVM 'nmd\dialogs\garage\events\combo_onSelect.sqf'";
			
			x = 0.17; y = 0.27;
			w = 0.3; h = 0.04;
		};
		
		class VehicleClass: NMD_RscListbox
		{
			idc = 4002;
			onLBSelChanged = "0 execVM 'nmd\dialogs\garage\events\listbox_onSelect.sqf'";

			x = 0.17; y = 0.32;
			w = 0.3; h = 0.35;
		};
		
		class Icon: NMD_RscPicture
		{
			idc = 4003;
			colorBackground[] = { "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])", 0.85 };
			
			x = 0.49; y = 0.295;
			w = 0.34; h = 0.34;
		};
		
	};
};