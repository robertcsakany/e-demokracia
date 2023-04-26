import { JudoStored } from '@judo/data-api-common';
import { EdemokraciaDebateStatus } from './EdemokraciaDebateStatus';

export interface AdminIssueDebate {
  closeAt: Date;
  description: string;
  status: EdemokraciaDebateStatus;
  title: string;
}
export type AdminIssueDebateAttributes = 'closeAt' | 'description' | 'status' | 'title';

export interface AdminIssueDebateStored extends JudoStored<AdminIssueDebate>, AdminIssueDebate {}
