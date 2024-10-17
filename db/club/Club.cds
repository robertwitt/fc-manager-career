namespace club;

using {cuid} from '@sap/cds/common';
using {club.MarketSize} from './MarketSize';
using {club.StadiumTier} from './StadiumTier';
using {club.Prestige} from './types';
using {common.Country} from '../common/Country';
using {common.Url} from '../common/types';


entity Club                                              @(Common.Label: '{i18n>Club}') : cuid {
  name                  : String(40)                     @Common.Label: '{i18n>ClubName}';
  country               : Association to one Country     @Common.Label: '{i18n>Country}';
  stadiumTier           : Association to one StadiumTier @Common.Label: '{i18n>StadiumTier}';
  marketSize            : Association to one MarketSize  @Common.Label: '{i18n>MarketSize}';
  domesticPrestige      : Prestige                       @Common.Label: '{i18n>DomesticPrestige}';
  internationalPrestige : Prestige                       @Common.Label: '{i18n>InternationalPrestige}';
  badgeUrl              : Url                            @Common.Label: '{i18n>ClubBadgeUrl}';
}
