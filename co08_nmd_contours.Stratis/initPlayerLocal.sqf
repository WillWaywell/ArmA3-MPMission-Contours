if( time < 5 ) then {

	//Establishing Shot
	private "_colorEast";
	_colorEast = EAST call BIS_fnc_sideColor;

	[
		getMarkerPos "NMD_maxwell",
		"Camp Maxwell",
		400,
		250,
		360,
		1,
		[
			[ "\a3\ui_f\data\map\markers\nato\b_unknown.paa", _colorEast, getMarkerPos "NMD_maxwell", 1, 1, 0, "", 0 ]
		]
	] spawn BIS_fnc_establishingShot;
	waitUntil { !isNil { BIS_missionStarted } };

	titleText [ "", "BLACK FADED", 10 ];
	0 fadeSound 0;
	0 fadeMusic 0;
	0 fadeSpeech 0;
	enableRadio false;
	enableEnvironment false;
	clearRadio;

	[] spawn {
		sleep 5;
		titleText [ "", "BLACK IN", 5 ];
		5 fadeSound 1;
		5 fadeMusic 0.6;
		5 fadeSpeech 1;
		enableRadio true;
		enableEnvironment true;
	};

};

if( time < 30 ) then {

	[] spawn {
		playMusic [ "Track11_StageB_stealth", 0 ];
	}

};