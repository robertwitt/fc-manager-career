namespace common;

using {sap.common.CodeList} from '@sap/cds/common';
using {common.Url} from './types';
using {scouting.ScoutingRegion} from '../scouting/ScoutingRegion';

entity Country                                           @(Common.Label: '{i18n>Country}') : CodeList {
  key code           : String(3)                         @Common.Label: '{i18n>Code}';
      flagUrl        : Url;
      scoutingRegion : Association to one ScoutingRegion @Common.Label: '{i18n>ScoutingRegion}';
}
