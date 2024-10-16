using {club as db} from '../db/club';

service ClubMasterService @(
  path    : '/club-master',
  restrict: [{
    grant: ['*'],
    to   : ['Administrator']
  }]
) {

  entity Clubs        as projection on db.Club;

  entity MarketSizes  as
    projection on db.MarketSize
    excluding {
      multiplier
    }

  entity StadiumTiers as projection on db.StadiumTier;

}

annotate ClubMasterService.Clubs with @odata.draft.enabled {
  name @mandatory;
};

annotate ClubMasterService.MarketSizes with @readonly;
annotate ClubMasterService.StadiumTiers with @readonly;
