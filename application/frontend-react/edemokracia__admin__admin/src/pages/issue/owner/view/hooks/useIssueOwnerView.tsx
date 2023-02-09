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
import { MdiIcon } from '../../../../../components';
import { FilterOption, FilterType } from '../../../../../components-api';
import { User, Issue, UserQueryCustomizer, IssueStored, UserStored } from '../../../../../generated/data-api';
import { baseColumnConfig } from '../../../../../config';
import { fileHandling } from '../../../../../utilities';

export const useIssueOwnerView = () => {
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();

  const queryCustomizer: UserQueryCustomizer = {
    _mask: '{userName}',
  };

  return {
    queryCustomizer,
  };
};
