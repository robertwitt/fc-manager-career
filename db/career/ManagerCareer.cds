namespace career;

using {cuid} from '@sap/cds/common';
using {club.Club} from '../club/Club';
using {club.InternationalCompetition} from '../club/InternationalCompetition';
using {club.League} from '../club/League';
using {common.Season} from '../common/Season';
using {common.Rating} from '../common/types';
using {
  coredna.DnaPoints,
  coredna.TraitPoints
} from '../coredna/types';

entity ManagerCareer                                                             @(Common.Label: '{i18n>ManagerCareer}') : cuid {
  club                             : Association to one Club                     @Common.Label: '{i18n>Club}';
  startingSeason                   : Association to one Season                   @Common.Label: '{i18n>Season}';
  startingLeague                   : Association to one League                   @Common.Label: '{i18n>League}';
  startingInternationalCompetition : Association to one InternationalCompetition @Common.Label: '{i18n>InternationalCompetition}';
  startingOverall                  : Rating                                      @Common.Label: '{i18n>Overall}';
  startingDnaPoints                : DnaPoints                                   @Common.Label: '{i18n>DnaPoints}';
  startingTraitPoints              : TraitPoints                                 @Common.Label: '{i18n>TraitPoints}';
  started                          : Boolean default false                       @Common.Label: '{i18n>CareerStarted}';
  active                           : Boolean default false                       @Common.Label: '{i18n>CareerActive}';
}
