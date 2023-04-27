//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230425_192230_4503f121_develop
// Template file: actor/src/pages/actions/action.tsx.hbs
// Action: DeleteAction

import { useTranslation } from 'react-i18next';
import type { JudoIdentifiable } from '@judo/data-api-common';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { useSnackbar } from 'notistack';
import { useErrorHandler, ERROR_PROCESSOR_HOOK_INTERFACE_KEY } from '../../../../../../utilities';
import { useConfirmDialog } from '../../../../../../components/dialog';
import {
  AdminComment,
  AdminSimpleVote,
  AdminCommentStored,
  AdminSimpleVoteStored,
  AdminSimpleVoteQueryCustomizer,
} from '../../../../../../generated/data-api';
import { adminCommentServiceForVotesImpl, adminSimpleVoteServiceImpl } from '../../../../../../generated/data-axios';

export type PageDeleteVotesAction = () => (
  owner: JudoIdentifiable<AdminComment>,
  selected: AdminSimpleVoteStored,
  successCallback: () => void,
) => Promise<void>;

export const usePageDeleteVotesAction: PageDeleteVotesAction = () => {
  const { t } = useTranslation();
  const { enqueueSnackbar } = useSnackbar();
  const { openConfirmDialog } = useConfirmDialog();
  const handleActionError = useErrorHandler<JudoIdentifiable<AdminComment>>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=RowDeleteAction))`,
  );

  return async function pageDeleteVotesAction(
    owner: JudoIdentifiable<AdminComment>,
    selected: AdminSimpleVoteStored,
    successCallback: () => void,
  ) {
    try {
      const confirmed = await openConfirmDialog(
        'row-delete-action',
        t('judo.modal.confirm.confirm-delete', {
          defaultValue: 'Are you sure you would like to delete the selected element?',
        }),
        t('judo.modal.confirm.confirm-title', { defaultValue: 'Confirm action' }),
      );

      if (confirmed) {
        await adminSimpleVoteServiceImpl.delete(selected);

        successCallback();
      }
    } catch (error) {
      handleActionError(error);
    }
  };
};
