import { _EnumerationOperation, EdemokraciaIssueStatus } from '../model';

export interface FilterByIssueStatus {
  value: EdemokraciaIssueStatus;
  operator: _EnumerationOperation;
}
