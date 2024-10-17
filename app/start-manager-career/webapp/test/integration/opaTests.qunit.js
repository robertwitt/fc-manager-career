sap.ui.require(
  [
    "sap/fe/test/JourneyRunner",
    "startmanagercareer/test/integration/FirstJourney",
    "startmanagercareer/test/integration/pages/ManagerCareersList",
    "startmanagercareer/test/integration/pages/ManagerCareersObjectPage",
  ],
  function (
    JourneyRunner,
    opaJourney,
    ManagerCareersList,
    ManagerCareersObjectPage
  ) {
    "use strict";
    var JourneyRunner = new JourneyRunner({
      // start index.html in web folder
      launchUrl: sap.ui.require.toUrl("startmanagercareer") + "/index.html",
    });

    JourneyRunner.run(
      {
        pages: {
          onTheManagerCareersList: ManagerCareersList,
          onTheManagerCareersObjectPage: ManagerCareersObjectPage,
        },
      },
      opaJourney.run
    );
  }
);
