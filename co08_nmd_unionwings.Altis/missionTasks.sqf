case "secureTown": {

	if ( !( _taskExists ) ) then {

		[
			WEST,
			_taskID,
			[
				"Clear Galati of AAF forces.",
				"Secure Galati",
				""
			],
			"NMD_enemy",
			false
		] call BIS_fnc_taskCreate;

	} else {

		[ _taskID, _this ] call BIS_fnc_taskSetState;

	};

};

case "moveToOP": {

	if ( !( _taskExists ) ) then {

		[
			WEST,
			_taskID,
			[
				"Move to and secure the observation post at Galati.",
				"Move to observation post",
				""
			],
			( getPosATL NMD_nearOPTrig ),
			true
		] call BIS_fnc_taskCreate;

	} else {

		[ _taskID, _this ] call BIS_fnc_taskSetState;

	};

};

case "defend": {

	if ( !( _taskExists ) ) then {

		[
			WEST,
			_taskID,
			[
				"Hold off the attacking AAF forces.",
				"Defend observation post",
				""
			],
			( getPosATL NMD_nearOPTrig ),
			true
		] call BIS_fnc_taskCreate;

	} else {

		[ _taskID, _this ] call BIS_fnc_taskSetState;

	};

};