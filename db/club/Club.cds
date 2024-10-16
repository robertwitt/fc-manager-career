namespace club;

using {cuid} from '@sap/cds/common';
using {club.MarketSize} from './MarketSize';
using {club.StadiumTier} from './StadiumTier';
using {common.Country} from '../common/Country';

entity Club                                    @(Common.Label: '{i18n>Club}') : cuid {
  name        : String(40)                     @Common.Label: '{i18n>ClubName}';
  country     : Association to one Country     @Common.Label: '{i18n>Country}';
  marketSize  : Association to one MarketSize  @Common.Label: '{i18n>MarketSize}';
  stadiumTier : Association to one StadiumTier @Common.Label: '{i18n>StadiumTier}';
}
