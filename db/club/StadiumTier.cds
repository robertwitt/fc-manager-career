namespace club;

using {sap.common.CodeList} from '@sap/cds/common';

entity StadiumTier   @(Common.Label: '{i18n>StadiumTier}') : CodeList {
  key code : Integer @Common.Label: '{i18n>Code}';
}
