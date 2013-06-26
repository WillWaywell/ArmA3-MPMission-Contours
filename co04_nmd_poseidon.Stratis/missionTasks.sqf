case "NMD_disarm" : {
	if ( _taskState == "" ) then {
		[
			WEST,
			_taskID,
			[
				"Disarm all 3 mines in the bay",
				"Disarm mines",
				""
			],
			objNull,
			false
		] call BIS_fnc_taskCreate;
	} else {
		[ _taskID, _this ] call BIS_fnc_taskSetState;
	};
};

	case "NMD_mine1" : {
		if ( _taskState == "" ) then {
			[
				WEST,
				[ _taskID, "NMD_disarm" ],
				[
					"Disarm the 1st mine",
					"Disarm mine #1",
					"Disarm"
				],
				[ position NMD_mine1 select 0, position NMD_mine1 select 1, -2 ],
				true
			] call BIS_fnc_taskCreate;
		} else {
			[ _taskID, _this ] call BIS_fnc_taskSetState;
		};
	};

	case "NMD_mine2" : {
		if ( _taskState == "" ) then {
			[
				WEST,
				[ _taskID, "NMD_disarm" ],
				[
					"Disarm the 2nd mine",
					"Disarm mine #2",
					"Disarm"
				],
				[ position NMD_mine2 select 0, position NMD_mine2 select 1, -2 ],
				false
			] call BIS_fnc_taskCreate;
		} else {
			[ _taskID, _this ] call BIS_fnc_taskSetState;
		};
	};

	case "NMD_mine3" : {
		if ( _taskState == "" ) then {
			[
				WEST,
				[ _taskID, "NMD_disarm" ],
				[
					"Disarm the 3rd mine",
					"Disarm mine #3",
					"Disarm"
				],
				[ position NMD_mine3 select 0, position NMD_mine3 select 1, -2 ],
				false
			] call BIS_fnc_taskCreate;
		} else {
			[ _taskID, _this ] call BIS_fnc_taskSetState;
		};
	};

case "NMD_assaultBase" : {
	if ( _taskState == "" ) then {
		[
			WEST,
			_taskID,
			[
				"Assault and capture Kamino Base",
				"Seize Kamino Base",
				"Seize"
			],
			getMarkerPos "NMD_mrkKamino",
			false
		] call BIS_fnc_taskCreate;
	} else {
		[ _taskID, _this ] call BIS_fnc_taskSetState;
	};
};

case "NMD_securePost" : {
	if ( _taskState == "" ) then {
		[
			WEST,
			_taskID,
			[
				"Secure Kamino Outpost",
				"Secure Kamino Outpost",
				"Secure"
			],
			getMarkerPos "NMD_mrkKaminoOutpost",
			false
		] call BIS_fnc_taskCreate;
	} else {
		[ _taskID, _this ] call BIS_fnc_taskSetState;
	};
};