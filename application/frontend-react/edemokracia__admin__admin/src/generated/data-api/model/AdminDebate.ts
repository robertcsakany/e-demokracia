import { JudoStored } from '@judo/data-api-common';
import { EdemokraciaDebateStatus } from './EdemokraciaDebateStatus';
import { AdminVoteDefinitionStored } from './AdminVoteDefinition';
import { AdminProStored } from './AdminPro';
import { AdminIssueStored } from './AdminIssue';
import { AdminConStored } from './AdminCon';
import { AdminUserStored } from './AdminUser';
import { AdminCommentStored } from './AdminComment';

export interface AdminDebate {
  closeAt: Date;
  description: string;
  status: EdemokraciaDebateStatus;
  title: string;
  issueTitle?: null | string;

  issue?: null | AdminIssueStored;
  comments?: null | Array<AdminCommentStored>;
  createdBy?: null | AdminUserStored;
  cons?: null | Array<AdminConStored>;
  pros?: null | Array<AdminProStored>;
  voteDefinition?: null | AdminVoteDefinitionStored;
}
export type AdminDebateAttributes = 'closeAt' | 'description' | 'status' | 'title' | 'issueTitle';

export type AdminDebateRelations = 'issue' | 'comments' | 'createdBy' | 'cons' | 'pros' | 'voteDefinition';

export interface AdminDebateStored extends JudoStored<AdminDebate>, AdminDebate {}
