namespace OfficeFloor;

entity Complaints {
  key ID: UUID;
  complaintsID: String(20) @assert.unique @mandatory;
  title: String(50);
  description: String;
  status: String(20);
  employeeId: String(20);
  dateRegistered: Date;
}

entity Suggestions {
  key ID: UUID;
  suggestionsID: String(20) @assert.unique @mandatory;
  title: String(50);
  description: String;
  status: String(20);
  employeeId: String(20);
  dateSubmitted: Date;
}
