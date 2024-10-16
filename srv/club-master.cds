using {club as db} from '../db/club';

service ClubMasterService @(
  path    : '/club-master',
  restrict: [{
    grant: ['*'],
    to   : ['Administrator']
  }]
) {

  entity Clubs as projection on db.Club;

}

annotate ClubMasterService.Clubs with @odata.draft.enabled {
  name @mandatory;
};
