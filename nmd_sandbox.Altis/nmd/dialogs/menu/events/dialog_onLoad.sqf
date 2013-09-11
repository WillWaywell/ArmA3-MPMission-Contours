disableSerialization;

ctrlEnable [ 4404, false ];

if( ( vehicle player ) == player ) then {

	ctrlEnable [ 4403, false ]; // Vehicle Service
	
} else {

	ctrlEnable [ 4401, false ]; // Garage

};

if( ( call NMD_isAdmin ) ) then {
	
	ctrlEnable [ 4404, true ];

};