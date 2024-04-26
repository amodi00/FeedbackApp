sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'complaintsandsuggestions/test/integration/FirstJourney',
		'complaintsandsuggestions/test/integration/pages/ComplaintsList',
		'complaintsandsuggestions/test/integration/pages/ComplaintsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ComplaintsList, ComplaintsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('complaintsandsuggestions') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheComplaintsList: ComplaintsList,
					onTheComplaintsObjectPage: ComplaintsObjectPage
                }
            },
            opaJourney.run
        );
    }
);