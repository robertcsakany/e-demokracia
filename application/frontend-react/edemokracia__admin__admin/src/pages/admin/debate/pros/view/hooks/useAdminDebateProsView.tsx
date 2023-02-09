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
  AdminProMaskBuilder,
  AdminCon,
  AdminConStored,
  AdminUserStored,
  AdminPro,
  AdminUserQueryCustomizer,
  AdminConMaskBuilder,
  AdminCommentQueryCustomizer,
  AdminUserMaskBuilder,
  AdminProStored,
  AdminProQueryCustomizer,
  AdminDebate,
  AdminCommentMaskBuilder,
  AdminConQueryCustomizer,
  AdminComment,
  AdminDebateStored,
  AdminUser,
  AdminCommentStored,
} from '../../../../../../generated/data-api';
import { baseColumnConfig } from '../../../../../../config';
import { fileHandling } from '../../../../../../utilities';

export const useAdminDebateProsView = () => {
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();

  const queryCustomizer: AdminProQueryCustomizer = {
    _mask:
      '{title,created,description,upVotes,downVotes,createdByName,createdBy{representation},pros{title,upVotes,downVotes},cons{title,upVotes,downVotes},comments{created,comment,createdByName,upVotes,downVotes}}',
  };

  const consSortModel: GridSortModel = [{ field: 'title', sort: 'asc' }];

  const consColumns: GridColDef<AdminConStored>[] = [
    {
      ...baseColumnConfig,
      field: 'title',
      headerName: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.arguments.arguments.cons.cons.title', {
        defaultValue: 'Title',
      }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'upVotes',
      headerName: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.arguments.arguments.cons.cons.upVotes', {
        defaultValue: 'up',
      }) as string,
      width: 100,
      type: 'number',
    },
    {
      ...baseColumnConfig,
      field: 'downVotes',
      headerName: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.arguments.arguments.cons.cons.downVotes', {
        defaultValue: 'down',
      }) as string,
      width: 100,
      type: 'number',
    },
  ];

  const consRangeFilterOptions: FilterOption[] = [
    {
      attributeName: 'title',
      filterType: FilterType.string,
    },
    {
      attributeName: 'upVotes',
      filterType: FilterType.numeric,
    },
    {
      attributeName: 'downVotes',
      filterType: FilterType.numeric,
    },
  ];

  const consInitialQueryCustomizer: AdminConQueryCustomizer = {
    _mask: '{title,upVotes,downVotes}',
    _orderBy: consSortModel.length
      ? [
          {
            attribute: consSortModel[0].field,
            descending: consSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };
  const prosSortModel: GridSortModel = [{ field: 'title', sort: 'asc' }];

  const prosColumns: GridColDef<AdminProStored>[] = [
    {
      ...baseColumnConfig,
      field: 'title',
      headerName: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.arguments.arguments.pros.pros.title', {
        defaultValue: 'Title',
      }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'upVotes',
      headerName: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.arguments.arguments.pros.pros.upVotes', {
        defaultValue: 'up',
      }) as string,
      width: 100,
      type: 'number',
    },
    {
      ...baseColumnConfig,
      field: 'downVotes',
      headerName: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.arguments.arguments.pros.pros.downVotes', {
        defaultValue: 'down',
      }) as string,
      width: 100,
      type: 'number',
    },
  ];

  const prosRangeFilterOptions: FilterOption[] = [
    {
      attributeName: 'title',
      filterType: FilterType.string,
    },
    {
      attributeName: 'upVotes',
      filterType: FilterType.numeric,
    },
    {
      attributeName: 'downVotes',
      filterType: FilterType.numeric,
    },
  ];

  const prosInitialQueryCustomizer: AdminProQueryCustomizer = {
    _mask: '{title,upVotes,downVotes}',
    _orderBy: prosSortModel.length
      ? [
          {
            attribute: prosSortModel[0].field,
            descending: prosSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };
  const commentsSortModel: GridSortModel = [{ field: 'created', sort: 'asc' }];

  const commentsColumns: GridColDef<AdminCommentStored>[] = [
    {
      ...baseColumnConfig,
      field: 'created',
      headerName: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.comments.comments.comments.comments.created', {
        defaultValue: 'Created',
      }) as string,
      width: 170,
      type: 'dateTime',
    },
    {
      ...baseColumnConfig,
      field: 'comment',
      headerName: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.comments.comments.comments.comments.comment', {
        defaultValue: 'Comment',
      }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'createdByName',
      headerName: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.comments.comments.comments.comments.createdByName', {
        defaultValue: 'Created by',
      }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'upVotes',
      headerName: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.comments.comments.comments.comments.upVotes', {
        defaultValue: 'up',
      }) as string,
      width: 100,
      type: 'number',
    },
    {
      ...baseColumnConfig,
      field: 'downVotes',
      headerName: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.comments.comments.comments.comments.downVotes', {
        defaultValue: 'down',
      }) as string,
      width: 100,
      type: 'number',
    },
  ];

  const commentsRangeFilterOptions: FilterOption[] = [
    {
      attributeName: 'created',
      filterType: FilterType.dateTime,
    },
    {
      attributeName: 'comment',
      filterType: FilterType.string,
    },
    {
      attributeName: 'createdByName',
      filterType: FilterType.string,
    },
    {
      attributeName: 'upVotes',
      filterType: FilterType.numeric,
    },
    {
      attributeName: 'downVotes',
      filterType: FilterType.numeric,
    },
  ];

  const commentsInitialQueryCustomizer: AdminCommentQueryCustomizer = {
    _mask: '{created,comment,createdByName,upVotes,downVotes}',
    _orderBy: commentsSortModel.length
      ? [
          {
            attribute: commentsSortModel[0].field,
            descending: commentsSortModel[0].sort === 'desc',
          },
        ]
      : [],
  };
  const createdBySortModel: GridSortModel = [{ field: 'representation', sort: 'asc' }];

  const createdByColumns: GridColDef<AdminUserStored>[] = [
    {
      ...baseColumnConfig,
      field: 'representation',
      headerName: t('edemokracia.admin.Debate.pros.Pro.View.pro.pro.createdBy.representation', {
        defaultValue: 'Representation',
      }) as string,
      width: 230,
      type: 'string',
    },
  ];

  const createdByRangeFilterOptions: FilterOption[] = [
    {
      attributeName: 'representation',
      filterType: FilterType.string,
    },
  ];

  const createdByInitialQueryCustomizer: AdminUserQueryCustomizer = {
    _mask: '{representation}',
    _orderBy: createdBySortModel.length
      ? [
          {
            attribute: createdBySortModel[0].field,
            descending: createdBySortModel[0].sort === 'desc',
          },
        ]
      : [],
  };

  return {
    queryCustomizer,
    consColumns,
    consRangeFilterOptions,
    consInitialQueryCustomizer,
    prosColumns,
    prosRangeFilterOptions,
    prosInitialQueryCustomizer,
    commentsColumns,
    commentsRangeFilterOptions,
    commentsInitialQueryCustomizer,
    createdByColumns,
    createdByRangeFilterOptions,
    createdByInitialQueryCustomizer,
  };
};
