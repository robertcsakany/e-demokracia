import { JudoIdentifiable } from '@judo/data-api-common';
import {
  AdminDashboardQueryCustomizer,
  AdminIssueQueryCustomizer,
  AdminCreateIssueInput,
  AdminDebate,
  AdminIssue,
  AdminIssueStored,
  AdminUserStored,
  AdminDebateStored,
  AdminCreateUserInput,
  AdminDashboardStored,
  AdminDashboard,
  AdminDebateQueryCustomizer,
} from '../data-api';

/**
 * Class Service for AdminDashboard
 */
export interface AdminDashboardService {
  refresh(
    target: JudoIdentifiable<AdminDashboard>,
    queryCustomizer?: AdminDashboardQueryCustomizer,
  ): Promise<AdminDashboardStored>;

  getIssues(
    target: JudoIdentifiable<AdminDashboard>,
    queryCustomizer?: AdminIssueQueryCustomizer,
  ): Promise<Array<AdminIssueStored>>;

  getRangeForIssues(
    owner?: JudoIdentifiable<AdminDashboard> | AdminDashboard,
    queryCustomizer?: AdminIssueQueryCustomizer,
  ): Promise<Array<AdminIssueStored>>;

  getDebates(
    target: JudoIdentifiable<AdminDashboard>,
    queryCustomizer?: AdminDebateQueryCustomizer,
  ): Promise<Array<AdminDebateStored>>;

  getRangeForDebates(
    owner?: JudoIdentifiable<AdminDashboard> | AdminDashboard,
    queryCustomizer?: AdminDebateQueryCustomizer,
  ): Promise<Array<AdminDebateStored>>;

  createIssue(target: AdminCreateIssueInput): Promise<AdminIssueStored>;

  createUser(target: AdminCreateUserInput): Promise<AdminUserStored>;
}
