namespace scouting;

using {sap.common.CodeList} from '@sap/cds/common';
using {common.Country} from '../common/Country';

entity ScoutingRegion                                   @(Common.Label: '{i18n>ScoutingRegion}') : CodeList {
  key code      : Integer                               @Common.Label: '{i18n>Code}';
      countries : Association to many Country
                    on countries.scoutingRegion = $self @Common.Label: '{i18n>Countries}';
}
