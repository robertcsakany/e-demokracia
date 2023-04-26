import { JudoStored } from '@judo/data-api-common';
import { EdemokraciaDebateStatus } from './EdemokraciaDebateStatus';
import { CommentStored } from './Comment';
import { ProStored } from './Pro';
import { IssueStored } from './Issue';
import { ConStored } from './Con';
import { UserStored } from './User';
import { VoteDefinitionStored } from './VoteDefinition';

export interface Debate {
  title: string;
  description: string;
  status: EdemokraciaDebateStatus;
  closeAt: Date;

  issue?: null | IssueStored;
  createdBy?: null | UserStored;
  debateVote?: null | VoteDefinitionStored;
  comments?: null | Array<CommentStored>;
  cons?: null | Array<ConStored>;
  pros?: null | Array<ProStored>;
}
export type DebateAttributes = 'title' | 'description' | 'status' | 'closeAt';

export type DebateRelations = 'issue' | 'createdBy' | 'debateVote' | 'comments' | 'cons' | 'pros';

export interface DebateStored extends JudoStored<Debate>, Debate {}
