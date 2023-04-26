import { QueryCustomizer } from '@judo/data-api-common';
import { AdminIssueAttachment } from '../model/AdminIssueAttachment';

import { FilterByAttachmentType } from './FilterByAttachmentType';
import { FilterByURL } from './FilterByURL';

export interface AdminIssueAttachmentQueryCustomizer extends QueryCustomizer<AdminIssueAttachment> {
  link?: Array<FilterByURL>;
  type?: Array<FilterByAttachmentType>;
}
