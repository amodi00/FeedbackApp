using { OfficeFloor } from '../db/schema.cds';

service OfficeFloorSrv {
  @odata.draft.enabled
  entity Complaints as projection on OfficeFloor.Complaints;
  @odata.draft.enabled
  entity Suggestions as projection on OfficeFloor.Suggestions;
}