namespace club;

using {sap.common.CodeList} from '@sap/cds/common';

entity MarketSize          @(Common.Label: '{i18n>MarketSize}') : CodeList {
  key code       : Integer @Common.Label: '{i18n>Code}';
      multiplier : Decimal;
}
