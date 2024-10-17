using {career} from '../db/career';

service ManagerCareerService @(path: '/manager-career') {

  entity ManagerCareers as projection on career.ManagerCareer;

}

annotate ManagerCareerService.ManagerCareers with @odata.draft.enabled {
  club                       @mandatory;
  starting {
    season                   @mandatory;
    league                   @mandatory;
    internationalCompetition @mandatory;
    overall                  @mandatory;
    dnaPoints                @readonly;
    traitPoints              @readonly;
  }
  started                    @readonly;
  active                     @readonly;
};
