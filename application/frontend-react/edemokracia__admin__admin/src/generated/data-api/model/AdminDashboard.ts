import { JudoStored } from '@judo/data-api-common';
import { AdminIssueStored } from './AdminIssue';
import { AdminDebateStored } from './AdminDebate';
import { AdminVoteEntryStored } from './AdminVoteEntry';

export interface AdminDashboard {
  welcome?: null | string;

  issues?: null | Array<AdminIssueStored>;
  debates?: null | Array<AdminDebateStored>;
  voteEntries?: null | Array<AdminVoteEntryStored>;
}
export type AdminDashboardAttributes = 'welcome';

export type AdminDashboardRelations = 'issues' | 'debates' | 'voteEntries';

export interface AdminDashboardStored extends JudoStored<AdminDashboard>, AdminDashboard {}
