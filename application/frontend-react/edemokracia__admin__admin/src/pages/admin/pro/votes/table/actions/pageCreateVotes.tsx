///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Pro::votes#PageCreate
// Action: CreateAction

import { useState, useCallback } from 'react';
import { useTranslation } from 'react-i18next';
import { Button, DialogActions, DialogContent, DialogContentText, DialogTitle, Grid } from '@mui/material';
import type { DialogOption } from '../../../../../../components';
import { useSnackbar, useDialog } from '../../../../../../components';
import { FilterOption, FilterType } from '../../../../../../components-api';
import { errorHandling } from '../../../../../../utilities';

import {
  AdminProStored,
  EdemokraciaSimpleVoteType,
  AdminPro,
  AdminSimpleVote,
  AdminSimpleVoteStored,
  AdminSimpleVoteQueryCustomizer,
} from '../../../../../../generated/data-api';
import { adminProServiceForVotesImpl, adminSimpleVoteServiceImpl } from '../../../../../../generated/data-axios';
import { PageCreateVotesForm } from './PageCreateVotesForm';

export type PageCreateVotesAction = () => (
  owner: AdminSimpleVoteStored,
  successCallback: (result: AdminSimpleVoteStored) => void,
) => void;

export const usePageCreateVotesAction: PageCreateVotesAction = () => {
  const [createDialog, closeDialog] = useDialog();
  const [enqueueSnackbar] = useSnackbar();

  return function pageCreateVotesAction(
    owner: AdminSimpleVoteStored,
    successCallback: (result: AdminSimpleVoteStored) => void,
  ) {
    createDialog({
      fullWidth: true,
      maxWidth: 'lg',
      onClose: (event: object, reason: string) => {
        if (reason !== 'backdropClick') {
          closeDialog();
        }
      },
      children: (
        <PageCreateVotesForm
          successCallback={(result) => {
            closeDialog();
            successCallback(result);
          }}
          cancel={closeDialog}
          owner={owner}
        />
      ),
    });
  };
};
