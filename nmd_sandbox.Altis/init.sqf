enableSaving [ false, false ];

if( !isDedicated ) then {

	player addAction [ "<t color='#85bfdb'>NMD Garage</t>", "nmd\dialogs\garage\create.sqf", nil, 0, false, true, "", "vehicle player == player" ];
	player addAction [ "<t color='#85bfdb'>VAS Gear</t>", "VAS\open.sqf", nil, 0, false, true, "", "vehicle player == player" ];

};