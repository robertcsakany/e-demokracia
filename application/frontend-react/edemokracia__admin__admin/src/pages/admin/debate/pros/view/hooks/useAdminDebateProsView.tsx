///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
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
import { baseColumnConfig, toastConfig } from '../../../../../../config';
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
      label: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.arguments.arguments.cons.cons.title.Filter', {
        defaultValue: 'Title',
      }) as string,
      filterType: FilterType.string,
    },
    {
      attributeName: 'upVotes',
      label: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.arguments.arguments.cons.cons.upVotes.Filter', {
        defaultValue: 'up',
      }) as string,
      filterType: FilterType.numeric,
    },
    {
      attributeName: 'downVotes',
      label: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.arguments.arguments.cons.cons.downVotes.Filter', {
        defaultValue: 'down',
      }) as string,
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
      label: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.arguments.arguments.pros.pros.title.Filter', {
        defaultValue: 'Title',
      }) as string,
      filterType: FilterType.string,
    },
    {
      attributeName: 'upVotes',
      label: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.arguments.arguments.pros.pros.upVotes.Filter', {
        defaultValue: 'up',
      }) as string,
      filterType: FilterType.numeric,
    },
    {
      attributeName: 'downVotes',
      label: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.arguments.arguments.pros.pros.downVotes.Filter', {
        defaultValue: 'down',
      }) as string,
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
      label: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.comments.comments.comments.comments.created.Filter', {
        defaultValue: 'Created',
      }) as string,
      filterType: FilterType.dateTime,
    },
    {
      attributeName: 'comment',
      label: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.comments.comments.comments.comments.comment.Filter', {
        defaultValue: 'Comment',
      }) as string,
      filterType: FilterType.string,
    },
    {
      attributeName: 'createdByName',
      label: t(
        'edemokracia.admin.Debate.pros.Pro.View.tabBar.comments.comments.comments.comments.createdByName.Filter',
        { defaultValue: 'Created by' },
      ) as string,
      filterType: FilterType.string,
    },
    {
      attributeName: 'upVotes',
      label: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.comments.comments.comments.comments.upVotes.Filter', {
        defaultValue: 'up',
      }) as string,
      filterType: FilterType.numeric,
    },
    {
      attributeName: 'downVotes',
      label: t('edemokracia.admin.Debate.pros.Pro.View.tabBar.comments.comments.comments.comments.downVotes.Filter', {
        defaultValue: 'down',
      }) as string,
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
  };
};
