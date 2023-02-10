///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Issue::attachments#TableCreate
// Action owner name: edemokracia::admin::Admin.issues#View
// Action DataElement name: attachments
// Action DataElement owner name: edemokracia::admin::Issue
// Action DataElement target name: edemokracia::admin::IssueAttachment
// Owner Page name: edemokracia::admin::Admin.issues#View
// Action: CreateAction

import { useState, useCallback } from 'react';
import { useTranslation } from 'react-i18next';
import { Button, DialogActions, DialogContent, DialogContentText, DialogTitle, Grid } from '@mui/material';
import type { DialogOption } from '../../../../../../../components';
import { useSnackbar, useDialog } from '../../../../../../../components';
import { FilterOption, FilterType } from '../../../../../../../components-api';

import {
  EdemokraciaAttachmentType,
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
import { TableCreateAttachmentsForm } from './TableCreateAttachmentsForm';

export type TableCreateAttachmentsAction = () => (
  owner: AdminIssueStored,
  successCallback: (result: AdminIssueAttachmentStored) => void,
) => void;

export const useTableCreateAttachmentsAction: TableCreateAttachmentsAction = () => {
  const [createDialog, closeDialog] = useDialog();

  return function tableCreateAttachmentsAction(
    owner: AdminIssueStored,
    successCallback: (result: AdminIssueAttachmentStored) => void,
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
        <TableCreateAttachmentsForm
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
