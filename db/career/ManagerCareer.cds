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

entity ManagerCareer                                                       @(Common.Label: '{i18n>ManagerCareer}') : cuid {
  club     : Association to one Club                                       @Common.Label: '{i18n>Club}';
  starting : {
    season                   : Association to one Season                   @Common.Label: '{i18n>Season}';
    league                   : Association to one League                   @Common.Label: '{i18n>League}';
    internationalCompetition : Association to one InternationalCompetition @Common.Label: '{i18n>InternationalCompetition}';
    overall                  : Rating                                      @Common.Label: '{i18n>Overall}';
    dnaPoints                : DnaPoints                                   @Common.Label: '{i18n>DnaPoints}';
    traitPoints              : TraitPoints                                 @Common.Label: '{i18n>TraitPoints}';
  };
  started  : Boolean default false                                         @Common.Label: '{i18n>CareerStarted}';
  active   : Boolean default false                                         @Common.Label: '{i18n>CareerActive}';
}
