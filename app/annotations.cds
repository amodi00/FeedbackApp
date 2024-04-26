using { OfficeFloorSrv } from '../srv/service.cds';

annotate OfficeFloorSrv.Complaints with @UI.DataPoint #title: {
  Value: title,
  Title: 'Title',
};
annotate OfficeFloorSrv.Complaints with @UI.DataPoint #status: {
  Value: status,
  Title: 'Status',
};
annotate OfficeFloorSrv.Complaints with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#title', ID: 'Title' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#status', ID: 'Status' }
];
annotate OfficeFloorSrv.Complaints with @UI.HeaderInfo: {
  TypeName: 'Complaint',
  TypeNamePlural: 'Complaints',
  Title: { Value: complaintsID }
};
annotate OfficeFloorSrv.Complaints with {
  ID @UI.Hidden
};
annotate OfficeFloorSrv.Complaints with @UI.Identification: [{ Value: complaintsID }];
annotate OfficeFloorSrv.Complaints with {
  complaintsID @Common.Label: 'Id';
  title @Common.Label: 'Title';
  description @Common.Label: 'Description';
  status @Common.Label: 'Status';
  employeeId @Common.Label: 'Employee Id';
  dateRegistered @Common.Label: 'Date Registered'
};
annotate OfficeFloorSrv.Complaints with {
  ID @Common.Text: { $value: complaintsID, ![@UI.TextArrangement]: #TextOnly };
};
annotate OfficeFloorSrv.Complaints with @UI.SelectionFields: [
  complaintsID
];
annotate OfficeFloorSrv.Complaints with @UI.LineItem : [
    { $Type: 'UI.DataField', Value: complaintsID },
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Value: status },
    { $Type: 'UI.DataField', Value: employeeId },
    { $Type: 'UI.DataField', Value: dateRegistered }
];
annotate OfficeFloorSrv.Complaints with @UI.FieldGroup #complaintDetails: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: complaintsID },
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Value: status },
    { $Type: 'UI.DataField', Value: employeeId },
    { $Type: 'UI.DataField', Value: dateRegistered }

  ]
};


annotate OfficeFloorSrv.Complaints with @UI.Facets: [
  {
    $Type: 'UI.CollectionFacet',
    ID: 'complaintsTab',
    Label: 'Complaints',
    Facets: [
      { $Type: 'UI.ReferenceFacet', ID: 'complaintDetails', Label: 'Complaint Details', Target: '@UI.FieldGroup#complaintDetails' } ]
  }
];
annotate OfficeFloorSrv.Suggestions with @UI.DataPoint #title: {
  Value: title,
  Title: 'Title',
};
annotate OfficeFloorSrv.Suggestions with @UI.DataPoint #status: {
  Value: status,
  Title: 'Status',
};
annotate OfficeFloorSrv.Suggestions with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#title', ID: 'Title' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#status', ID: 'Status' }
];
annotate OfficeFloorSrv.Suggestions with @UI.HeaderInfo: {
  TypeName: 'Suggestion',
  TypeNamePlural: 'Suggestions',
  Title: { Value: suggestionsID }
};
annotate OfficeFloorSrv.Suggestions with {
  ID @UI.Hidden
};
annotate OfficeFloorSrv.Suggestions with @UI.Identification: [{ Value: suggestionsID }];
annotate OfficeFloorSrv.Suggestions with {
  suggestionsID @Common.Label: 'Id';
  title @Common.Label: 'Title';
  description @Common.Label: 'Description';
  status @Common.Label: 'Status';
  employeeId @Common.Label: 'Employee Id';
  dateSubmitted @Common.Label: 'Date Submitted'
};
annotate OfficeFloorSrv.Suggestions with {
  ID @Common.Text: { $value: suggestionsID, ![@UI.TextArrangement]: #TextOnly };
};
annotate OfficeFloorSrv.Suggestions with @UI.SelectionFields: [
  suggestionsID
];
annotate OfficeFloorSrv.Suggestions with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: suggestionsID },
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Value: status },
    { $Type: 'UI.DataField', Value: employeeId },
    { $Type: 'UI.DataField', Value: dateSubmitted }
];
annotate OfficeFloorSrv.Suggestions with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: suggestionsID },
    { $Type: 'UI.DataField', Value: title },
    { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Value: status },
    { $Type: 'UI.DataField', Value: employeeId },
    { $Type: 'UI.DataField', Value: dateSubmitted }
]};
annotate OfficeFloorSrv.Suggestions with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];