namespace club;

using {cuid} from '@sap/cds/common';

entity Club         @(Common.Label: '{i18n>Club}') : cuid {
  name : String(40) @Common.Label: '{i18n>ClubName}';
}
