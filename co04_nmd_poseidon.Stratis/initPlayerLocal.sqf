if( time < 5 ) then {

	//Establishing Shot
	private "_colorEast";
	_colorEast = EAST call BIS_fnc_sideColor;

	[
		getMarkerPos "NMD_mrkKamino",
		"Kamino Base",
		300,
		250,
		360,
		1,
		[
			[ "\a3\ui_f\data\map\markers\nato\o_unknown.paa", _colorEast, getMarkerPos "NMD_mrkKamino", 1, 1, 0, "", 0 ],
			[ "\a3\ui_f\data\map\markers\nato\o_unknown.paa", _colorEast, getMarkerPos "NMD_mrkKaminoOutpost", .7, .7, 0, "", 0 ]
		]
	] spawn BIS_fnc_establishingShot;
	waitUntil { !isNil { BIS_missionStarted } };

};

if( time < 60 ) then {

	[] spawn {
		playMusic [ "Track11_StageB_stealth", 0 ];
	}

};