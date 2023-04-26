import { QueryCustomizer } from '@judo/data-api-common';
import { IssueAttachment } from '../model/IssueAttachment';

import { FilterByAttachmentType } from './FilterByAttachmentType';
import { FilterByURL } from './FilterByURL';

export interface IssueAttachmentQueryCustomizer extends QueryCustomizer<IssueAttachment> {
  link?: Array<FilterByURL>;
  type?: Array<FilterByAttachmentType>;
}
