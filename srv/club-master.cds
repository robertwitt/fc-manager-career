using {club} from '../db/club';
using {common} from '../db/common';


service ClubMasterService @(
  path    : '/club-master',
  restrict: [{
    grant: ['*'],
    to   : ['Administrator']
  }]
) {

  entity Clubs        as projection on club.Club
    actions {
      action updateBadge(url : club.Club:badgeUrl) returns Clubs;
    };

  entity Countries    as
    projection on common.Country
    excluding {
      descr
    };

  entity MarketSizes  as
    projection on club.MarketSize
    excluding {
      multiplier
    }

  entity StadiumTiers as projection on club.StadiumTier;

}

annotate ClubMasterService.Clubs with @odata.draft.enabled {
  name                  @mandatory;
  country               @mandatory;
  stadiumTier           @mandatory;
  marketSize            @mandatory;
  domesticPrestige      @mandatory;
  internationalPrestige @mandatory;
};

annotate ClubMasterService.Countries with @readonly;
annotate ClubMasterService.MarketSizes with @readonly;
annotate ClubMasterService.StadiumTiers with @readonly;
