///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Issue::attachments#RowDelete
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from '../../../../../../../components';
import { errorHandling } from '../../../../../../../utilities';
import {
  AdminIssueAttachment,
  AdminIssue,
  AdminIssueStored,
  AdminIssueAttachmentStored,
  AdminIssueAttachmentQueryCustomizer,
} from '../../../../../../../generated/data-api';
import {
  adminIssueServiceForAttachmentsImpl,
  adminIssueAttachmentServiceImpl,
} from '../../../../../../../generated/data-axios';

export type RowDeleteAttachmentsAction = () => (
  owner: JudoIdentifiable<AdminIssue>,
  selected: AdminIssueAttachmentStored,
  successCallback: () => void,
) => Promise<void>;

export const useRowDeleteAttachmentsAction: RowDeleteAttachmentsAction = () => {
  const [enqueueSnackbar] = useSnackbar();

  return async function rowDeleteAttachmentsAction(
    owner: JudoIdentifiable<AdminIssue>,
    selected: AdminIssueAttachmentStored,
    successCallback: () => void,
  ) {
    try {
      await adminIssueServiceForAttachmentsImpl.deleteAttachments(owner, selected);

      successCallback();
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    }
  };
};
