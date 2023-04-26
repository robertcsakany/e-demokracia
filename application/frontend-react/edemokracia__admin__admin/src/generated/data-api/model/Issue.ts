import { JudoStored } from '@judo/data-api-common';
import { CommentStored } from './Comment';
import { CityStored } from './City';
import { EdemokraciaVoteType } from './EdemokraciaVoteType';
import { IssueCategoryStored } from './IssueCategory';
import { DebateStored } from './Debate';
import { UserStored } from './User';
import { DistrictStored } from './District';
import { IssueAttachmentStored } from './IssueAttachment';
import { IssueTypeStored } from './IssueType';
import { EdemokraciaIssueStatus } from './EdemokraciaIssueStatus';
import { CountyStored } from './County';

export interface Issue {
  created: Date;
  title: string;
  description: string;
  status: EdemokraciaIssueStatus;
  defaultVoteType?: null | EdemokraciaVoteType;

  debates?: null | Array<DebateStored>;
  attachments?: null | Array<IssueAttachmentStored>;
  owner?: null | UserStored;
  categories?: null | Array<IssueCategoryStored>;
  comments?: null | Array<CommentStored>;
  createdBy?: null | UserStored;
  issueType?: null | IssueTypeStored;
  county?: null | CountyStored;
  district?: null | DistrictStored;
  city?: null | CityStored;
}
export type IssueAttributes = 'created' | 'title' | 'description' | 'status' | 'defaultVoteType';

export type IssueRelations =
  | 'debates'
  | 'attachments'
  | 'owner'
  | 'categories'
  | 'comments'
  | 'createdBy'
  | 'issueType'
  | 'county'
  | 'district'
  | 'city';

export interface IssueStored extends JudoStored<Issue>, Issue {}
