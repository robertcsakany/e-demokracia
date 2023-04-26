import { JudoStored } from '@judo/data-api-common';
import { EdemokraciaAttachmentType } from './EdemokraciaAttachmentType';

export interface IssueAttachment {
  link?: null | string;
  file?: null | any;
  type: EdemokraciaAttachmentType;
}
export type IssueAttachmentAttributes = 'link' | 'file' | 'type';

export interface IssueAttachmentStored extends JudoStored<IssueAttachment>, IssueAttachment {}
