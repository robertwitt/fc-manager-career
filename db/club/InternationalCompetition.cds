namespace club;

using {sap.common.CodeList} from '@sap/cds/common';

entity InternationalCompetition @(Common.Label: '{i18n>InternationalCompetition}') : CodeList {
  key code : Integer            @Common.Label: '{i18n>InternationalCompetition}';
}
