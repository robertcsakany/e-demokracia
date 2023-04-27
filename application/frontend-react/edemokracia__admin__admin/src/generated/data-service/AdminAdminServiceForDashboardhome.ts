import {
  AdminDashboardQueryCustomizer,
  AdminIssueQueryCustomizer,
  AdminVoteEntry,
  AdminDebate,
  AdminIssue,
  AdminVoteEntryQueryCustomizer,
  AdminIssueStored,
  AdminDebateStored,
  AdminVoteEntryStored,
  AdminDashboardStored,
  AdminDashboard,
  AdminDebateQueryCustomizer,
} from '../data-api';

/**
 * Access Relation Service for AdminAdmin.dashboardhome
 */
export interface AdminAdminServiceForDashboardhome {
  getDashboardhome(mask?: string): Promise<AdminDashboardStored>;
}
