using {career} from '../db/career';
using {club} from '../db/club';


service ManagerCareerService @(path: '/manager-career') {

  entity ManagerCareers as projection on career.ManagerCareer
    actions {
      action start() returns ManagerCareers
    };

  entity Clubs          as projection on club.Club;

}

annotate ManagerCareerService.ManagerCareers with @odata.draft.enabled {
  club                             @mandatory;
  startingSeason                   @mandatory;
  startingLeague                   @mandatory;
  startingInternationalCompetition @mandatory;
  startingOverall                  @mandatory;
  startingDnaPoints                @readonly;
  startingTraitPoints              @readonly;
  started                          @readonly;
  active                           @readonly;
};
