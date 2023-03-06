///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Debate::comments#RowDelete
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from '../../../../../../../components';
import { errorHandling } from '../../../../../../../utilities';
import {
  AdminDebate,
  AdminComment,
  AdminDebateStored,
  AdminCommentQueryCustomizer,
  AdminCommentStored,
} from '../../../../../../../generated/data-api';
import { adminDebateServiceForCommentsImpl, adminCommentServiceImpl } from '../../../../../../../generated/data-axios';

export type RowDeleteCommentsAction = () => (
  owner: JudoIdentifiable<AdminDebate>,
  selected: AdminCommentStored,
  successCallback: () => void,
) => Promise<void>;

export const useRowDeleteCommentsAction: RowDeleteCommentsAction = () => {
  const [enqueueSnackbar] = useSnackbar();

  return async function rowDeleteCommentsAction(
    owner: JudoIdentifiable<AdminDebate>,
    selected: AdminCommentStored,
    successCallback: () => void,
  ) {
    try {
      await adminDebateServiceForCommentsImpl.deleteComments(owner, selected);

      successCallback();
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    }
  };
};
