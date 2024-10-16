sap.ui.require(
  [
    "sap/fe/test/JourneyRunner",
    "manageclubmaster/test/integration/FirstJourney",
    "manageclubmaster/test/integration/pages/ClubsList",
    "manageclubmaster/test/integration/pages/ClubsObjectPage",
  ],
  function (JourneyRunner, opaJourney, ClubsList, ClubsObjectPage) {
    "use strict";
    var JourneyRunner = new JourneyRunner({
      // start index.html in web folder
      launchUrl: sap.ui.require.toUrl("manageclubmaster") + "/index.html",
    });

    JourneyRunner.run(
      {
        pages: {
          onTheClubsList: ClubsList,
          onTheClubsObjectPage: ClubsObjectPage,
        },
      },
      opaJourney.run
    );
  }
);
