private[ "_dialog", "_ctrlList", "_class", "_dir" , "_dist" , "_spawn" , "_vehicle" ];
disableSerialization;

_dialog = findDisplay 4000;
_ctrlList = _dialog displayCtrl 4002;
_class = _ctrlList lbData ( lbCurSel _ctrlList );

_dir = getDir player;
_dist = 16;
_spawn = [ ( getPos vehicle player select 0 ) + ( _dist * sin( _dir ) ), ( getPos vehicle player select 1 ) + ( _dist * cos( _dir ) ), 0 ];

_vehicle = _class createVehicle _spawn ;
_vehicle setDir _dir;

closeDialog 4000;