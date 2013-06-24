case "NMD_seize" : {
	if (_taskState == "") then {
		[
			WEST,
			_taskID,
			[
				"Assault and secure Camp Maxwell",
				"Seize Camp Maxwell",
				"Seize"
			],
			getMarkerPos "NMD_maxwell",
			false
		] call BIS_fnc_taskCreate;
	} else {
		[ _taskID, _this ] call BIS_fnc_taskSetState;
	};
};