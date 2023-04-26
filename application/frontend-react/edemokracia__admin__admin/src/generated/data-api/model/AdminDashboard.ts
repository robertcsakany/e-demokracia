import { JudoStored } from '@judo/data-api-common';
import { AdminIssueStored } from './AdminIssue';
import { AdminDebateStored } from './AdminDebate';

export interface AdminDashboard {
  welcome?: null | string;

  issues?: null | Array<AdminIssueStored>;
  debates?: null | Array<AdminDebateStored>;
}
export type AdminDashboardAttributes = 'welcome';

export type AdminDashboardRelations = 'issues' | 'debates';

export interface AdminDashboardStored extends JudoStored<AdminDashboard>, AdminDashboard {}
