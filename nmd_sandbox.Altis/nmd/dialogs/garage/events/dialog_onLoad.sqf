private[ "_dialog", "_ctrlType" ];
disableSerialization;

_dialog = findDisplay 4000;
_ctrlType = _dialog displayCtrl 4001;

{

	_ctrlType lbAdd ( _x select 0 );
	_ctrlType lbSetData [ ( lbSize _ctrlType ) -1,  ( _x select 1 ) ];

} foreach [ [ "Air", "Air" ], [ "Armored", "Armored" ], [ "Cars", "Car" ], [ "Ships", "Ship" ], [ "Supports", "Support" ], [ "Submarines", "Submarine" ], [ "Autonomous", "Autonomous" ] ];

_ctrlType lbSetCurSel 0;
