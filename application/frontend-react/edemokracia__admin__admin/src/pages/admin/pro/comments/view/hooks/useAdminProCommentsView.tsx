///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pagePath(#self)+'hooks/use'+#pageName(#self)+'.tsx'
// Template name: actor/src/pages/hooks.tsx.hbs
// Hook: Relation View

import { useTranslation } from 'react-i18next';
import { GridColDef, GridSortModel, GridRowParams, GridRenderCellParams } from '@mui/x-data-grid';
import { Button } from '@mui/material';
import { MdiIcon } from '../../../../../../components';
import { FilterOption, FilterType } from '../../../../../../components-api';
import {
  AdminProStored,
  AdminComment,
  AdminUserStored,
  AdminPro,
  AdminUserQueryCustomizer,
  AdminUser,
  AdminCommentQueryCustomizer,
  AdminCommentStored,
  AdminUserMaskBuilder,
} from '../../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { fileHandling } from '../../../../../../utilities';

export const useAdminProCommentsView = () => {
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();

  const queryCustomizer: AdminCommentQueryCustomizer = {
    _mask: '{created,comment,upVotes,downVotes,createdBy{representation}}',
  };

  const createdBySortModel: GridSortModel = [{ field: 'representation', sort: 'asc' }];

  return {
    queryCustomizer,
  };
};
