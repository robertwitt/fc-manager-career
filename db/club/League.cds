namespace club;

using {sap.common.CodeList} from '@sap/cds/common';
using {common.Country} from '../common/Country';

entity League                                 @(Common.Label: '{i18n>League}') : CodeList {
  key code       : String(4)                  @Common.Label: '{i18n>League}';
      country    : Association to one Country @Common.Label: '{i18n>Country}';
      level      : Integer;
      reputation : Integer                    @Common.Label: '{i18n>LeagueReputation}';
}
