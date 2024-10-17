const cds = require("@sap/cds");

class ClubMasterService extends cds.ApplicationService {
  async updateBadge(Clubs, key, url) {
    await this.update(Clubs, key).with({ badgeUrl: url });
    return this.read(Clubs, key);
  }
}

module.exports = ClubMasterService;
