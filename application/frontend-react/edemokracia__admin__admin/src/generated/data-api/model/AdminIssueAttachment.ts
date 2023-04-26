import { JudoStored } from '@judo/data-api-common';
import { EdemokraciaAttachmentType } from './EdemokraciaAttachmentType';

export interface AdminIssueAttachment {
  link?: null | string;
  file?: null | any;
  type: EdemokraciaAttachmentType;
}
export type AdminIssueAttachmentAttributes = 'link' | 'file' | 'type';

export interface AdminIssueAttachmentStored extends JudoStored<AdminIssueAttachment>, AdminIssueAttachment {}
