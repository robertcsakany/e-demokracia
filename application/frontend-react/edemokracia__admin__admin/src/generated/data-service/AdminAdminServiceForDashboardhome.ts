import {
  AdminDashboardQueryCustomizer,
  AdminIssueQueryCustomizer,
  AdminDebate,
  AdminIssue,
  AdminIssueStored,
  AdminDebateStored,
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
