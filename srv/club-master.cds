using {club as db} from '../db/club';

service ClubMasterService @(path: '/club-master') {

  entity Clubs as projection on db.Club;

}

annotate ClubMasterService.Clubs with @odata.draft.enabled;
