#include "initBriefing.hpp"

//--- Apply color corrections
"ColorCorrections" ppEffectEnable true;
"ColorCorrections" ppEffectAdjust [ 1, 1.08, -0.06, [ 0.5, 0.5, 0.5, 0 ], [ 1.0, 1.0, 1.0, 1.21 ], [ 0.09, 0.09, 0.09, 0.0 ] ];
"ColorCorrections" ppEffectCommit 0;

waitUntil { !isNull player };

// Time bug for JIP
//if( time < 10 ) then {
if( alive NMD_lzInsertion ) then {

	//--- Fade out
	titleText [ "", "BLACK FADED", 10 ];
	0 fadeSound 0;
	0 fadeMusic 0;
	0 fadeSpeech 0;
	enableRadio false;
	enableEnvironment false;
	clearRadio;

	[] spawn {

		//--- Play intro music
		playMusic "LeadTrack01b_F";

		sleep 5;

		//--- Fade in
		titleText [ "", "BLACK IN", 5 ];
		5 fadeSound 1;
		5 fadeMusic 1;
		5 fadeSpeech 1;
		enableRadio true;
		enableEnvironment true;

		sleep 10;

		//--- Type date, time and location
		private [ "_year", "_month", "_day", "_hour", "_minute", "_date", "_time" ];

		_year = ( date select 0 );
		_month = ( date select 1 );
		_day = ( date select 2 );

		if( _month < 10 ) then { _month = format[ "0%1", _month ] };
		if( _day < 10 ) then { _day = format[ "0%1", _day ] };

		//--- Get date
		_date = format[ "%1-%2-%3", _year, _month, _day ];

		_hour = ( date select 3 );
		_minute = ( date select 4 );

		if( _hour < 10 ) then { _hour = format[ "0%1", _hour ] };
		if( _minute < 10 ) then { _minute = format[ "0%1", _minute ] };

		//--- Get time
		_time = format[ "%1:%2", _hour, _minute ];

		[  
			[ 

				[ _date, "<t size='1.0' font='PuristaMedium'>%1</t>", 0 ], 
				[ _time, "<t size='1.0' font='PuristaBold'>%1</t><br/>", 5 ], 

				[ "South of Galati", "<t size='0.9' font='PuristaBold'>%1</t><br/>", 5 ], 

				[ "Central Altis", "<t size='0.9'>%1</t><br/>", 30 ]


			],
			-safezoneX, 
			0.85, 
			"<t align='right' shadow='1' size='1.0'>%1</t>" 
		] spawn BIS_fnc_typeText;

	};

};

//--- Draw on-screen player icons
addMissionEventHandler [ "Draw3D", {

	_blacklist = [];
	
	{

		if( player != _x && { side _x == playerSide } && { !( vehicle _x in _blacklist ) } && { ( player distance vehicle _x ) < 2500 } ) then {

			private[ "_color", "_pos", "_size" ];

			[ _blacklist, vehicle _x ] call BIS_fnc_arrayPush;

			_color = ( ( side _x ) call BIS_fnc_sideColor );
			_pos = visiblePosition vehicle _x;
			_pos set[ 2, ( visiblePosition vehicle _x select 2 ) + 2.2 ];
			_size = 0.6;

			drawIcon3D [

				"\A3\ui_f\data\map\markers\nato\b_unknown.paa", 
				_color,
				_pos, 
				_size, // Width
				_size, // Height
				0

			];

		};

	} forEach ( units group player );

} ];