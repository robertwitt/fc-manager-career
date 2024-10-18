class CoreDnaCalculator {
  static calculateDnaPoints(
    domesticPrestige,
    internationalPrestige,
    leagueReputation
  ) {
    return (
      28 +
      leagueReputation +
      Math.floor(0.5 * (domesticPrestige + internationalPrestige))
    );
  }

  static calculateTraitPoints(clubOverall) {
    return Math.max(clubOverall - 59, 0);
  }
}

module.exports = { CoreDnaCalculator };
