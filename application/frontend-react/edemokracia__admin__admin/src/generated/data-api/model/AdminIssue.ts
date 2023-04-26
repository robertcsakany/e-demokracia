import { JudoStored } from '@judo/data-api-common';
import { AdminIssueCategoryStored } from './AdminIssueCategory';
import { EdemokraciaVoteType } from './EdemokraciaVoteType';
import { AdminUserStored } from './AdminUser';
import { AdminIssueAttachmentStored } from './AdminIssueAttachment';
import { AdminDistrictStored } from './AdminDistrict';
import { AdminCommentStored } from './AdminComment';
import { AdminCountyStored } from './AdminCounty';
import { AdminCityStored } from './AdminCity';
import { EdemokraciaIssueStatus } from './EdemokraciaIssueStatus';
import { AdminIssueDebateStored } from './AdminIssueDebate';
import { AdminIssueTypeStored } from './AdminIssueType';

export interface AdminIssue {
  created?: null | Date;
  title: string;
  description: string;
  status: EdemokraciaIssueStatus;
  representation?: null | string;
  numberOfDebates?: null | number;
  defaultVoteType?: null | EdemokraciaVoteType;

  attachments?: null | Array<AdminIssueAttachmentStored>;
  owner?: null | AdminUserStored;
  categories?: null | Array<AdminIssueCategoryStored>;
  debates?: null | Array<AdminIssueDebateStored>;
  comments?: null | Array<AdminCommentStored>;
  createdBy?: null | AdminUserStored;
  issueType?: null | AdminIssueTypeStored;
  county?: null | AdminCountyStored;
  city?: null | AdminCityStored;
  district?: null | AdminDistrictStored;
}
export type AdminIssueAttributes =
  | 'created'
  | 'title'
  | 'description'
  | 'status'
  | 'representation'
  | 'numberOfDebates'
  | 'defaultVoteType';

export type AdminIssueRelations =
  | 'attachments'
  | 'owner'
  | 'categories'
  | 'debates'
  | 'comments'
  | 'createdBy'
  | 'issueType'
  | 'county'
  | 'city'
  | 'district';

export interface AdminIssueStored extends JudoStored<AdminIssue>, AdminIssue {}
