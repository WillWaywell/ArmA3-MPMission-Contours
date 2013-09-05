private[ "_dialog", "_ctrlList", "_ctrlIcon", "_selected", "_class" ];
disableSerialization;

_dialog = findDisplay 4000;
_ctrlList = _dialog displayCtrl 4002;
_ctrlIcon = _dialog displayCtrl 4003;
_selected = lbCurSel _ctrlList;

if( _selected == -1 ) exitWith {};

_class = _ctrlList lbData _selected;
_ctrlIcon ctrlSetText getText( configfile >> "CfgVehicles" >> _class  >> "icon" );