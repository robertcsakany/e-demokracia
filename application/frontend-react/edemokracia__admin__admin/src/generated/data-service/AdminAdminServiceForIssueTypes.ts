import { AdminIssueTypeQueryCustomizer, AdminIssueType, AdminIssueTypeStored } from '../data-api';

/**
 * Access Relation Service for AdminAdmin.issueTypes
 */
export interface AdminAdminServiceForIssueTypes {
  listIssueTypes(queryCustomizer?: AdminIssueTypeQueryCustomizer): Promise<Array<AdminIssueTypeStored>>;

  createIssueTypes(target: AdminIssueType): Promise<AdminIssueTypeStored>;
}
