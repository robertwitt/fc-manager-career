const cds = require("@sap/cds");
const { CoreDnaCalculator } = require("../coreDna");

class ManagerCareerService extends cds.ApplicationService {
  async start(ManagerCareers, key) {
    const db = await cds.connect.to("db");
    const { ManagerCareer } = db.entities("career");
    const { Club, League } = db.entities("club");

    const {
      club_ID: clubId,
      startingLeague_code: leagueCode,
      startingOverall: overall,
    } = await db
      .read(ManagerCareer, key)
      .columns("club_ID", "startingLeague_code", "startingOverall");

    const { domesticPrestige, internationalPrestige } = await db
      .read(Club, clubId)
      .columns("domesticPrestige", "internationalPrestige");

    const { reputation: leagueReputation } = await db
      .read(League, leagueCode)
      .columns("reputation");

    const startingDnaPoints = CoreDnaCalculator.calculateDnaPoints(
      domesticPrestige,
      internationalPrestige,
      leagueReputation
    );
    const startingTraitPoints = CoreDnaCalculator.calculateTraitPoints(overall);

    await db.update(ManagerCareer, key).with({
      startingDnaPoints,
      startingTraitPoints,
      started: true,
    });
    return this.read(ManagerCareers, key);
  }
}

module.exports = ManagerCareerService;
