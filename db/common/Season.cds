namespace common;

using {sap.common.CodeList} from '@sap/cds/common';

entity Season        @(Common.Label: '{i18n>Season}') : CodeList {
  key year : Integer @Common.Label: '{i18n>Season}';
}
