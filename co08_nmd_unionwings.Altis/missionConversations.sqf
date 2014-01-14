case "insertion" : {

	NMD_Vulture sideChat "60 seconds!";
	sleep 15;
	NMD_HQ sideChat "Delta, be advised still no luck raising the OP on comms, proceed with extreme caution, over.";
	sleep 10;
	leader NMD_group sideChat "Roger that HQ. Expecting the worst, out.";

};

case "landingZone" : {

	leader NMD_group sideChat "Delta, boots on the ground!";
	sleep 8;
	NMD_HQ sideChat "Good luck lads, out.";

};

case "townSecure" : {
	
	leader NMD_group sideChat "Delta, Galati town is secure. Heading to observation post, over.";
	sleep 6;
	NMD_HQ sideChat "Have that, be advised intel suggests AAF reinforcements are rallying.";
	sleep 5;
	NMD_HQ sideChat "Continue to observation post and dig in, out.";

};

case "defend" : {

	leader NMD_group sideChat "Delta, have arrived at Galati observation post, over.";
	sleep 6;
	NMD_HQ sideChat "Have that delta, sending fire team reinforcements to your position!";
	sleep 15;
	leader NMD_groupEcho sideChat "This is echo, en route to observation post. ETA 2 mikes, out.";

};

case "end" : {

	leader NMD_group sideChat "This is delta, AAF reinforcements have been pushed back, over.";
	sleep 6;
	NMD_HQ sideChat "Well done lads, we'll stick the kettle on, out.";

};