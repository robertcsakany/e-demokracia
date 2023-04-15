//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pagePath(#self)+'hooks/use'+#pageName(#self)+'.tsx'
// Template name: actor/src/pages/hooks.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/pages/hooks.tsx.hbs
// Hook: Access View

import { useTranslation } from 'react-i18next';
import { GridColDef, GridSortModel, GridRowParams, GridRenderCellParams } from '@mui/x-data-grid';
import { Button } from '@mui/material';
import { MdiIcon } from '../../../../../../components';
import { FilterOption, FilterType } from '../../../../../../components-api';
import {
  AdminCon,
  AdminIssueStored,
  AdminCommentQueryCustomizer,
  AdminUserMaskBuilder,
  AdminIssueQueryCustomizer,
  AdminProQueryCustomizer,
  AdminCommentMaskBuilder,
  AdminVoteDefinitionMaskBuilder,
  AdminComment,
  AdminDebateStored,
  AdminUser,
  AdminDebateQueryCustomizer,
  AdminIssueMaskBuilder,
  AdminVoteDefinitionQueryCustomizer,
  AdminProMaskBuilder,
  AdminConStored,
  AdminUserStored,
  AdminUserQueryCustomizer,
  AdminConMaskBuilder,
  AdminPro,
  EdemokraciaDebateStatus,
  AdminVoteDefinitionStored,
  AdminProStored,
  AdminDebate,
  AdminIssue,
  AdminConQueryCustomizer,
  AdminVoteDefinition,
  AdminCommentStored,
} from '../../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { fileHandling } from '../../../../../../utilities';

export const useAdminAdminDebatesView = () => {
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();

  const queryCustomizer: AdminDebateQueryCustomizer = {
    _mask:
      '{title,status,closeAt,description,issue{representation},createdBy{representation},voteDefinition{title,created,status,closeAt},pros{title,upVotes,downVotes},cons{title,upVotes,downVotes},comments{created,comment,createdByName,upVotes,downVotes}}',
  };

  const consSortModel: GridSortModel = [{ field: 'title', sort: 'asc' }];

  const consColumns: GridColDef<AdminConStored>[] = [
    {
      ...baseColumnConfig,
      field: 'title',
      headerName: t('edemokracia.admin.Admin.debates.Debate.View.tabBar.arguments.arguments.cons.cons.title', {
        defaultValue: 'Title',
      }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'upVotes',
      headerName: t('edemokracia.admin.Admin.debates.Debate.View.tabBar.arguments.arguments.cons.cons.upVotes', {
        defaultValue: 'up',
      }) as string,
      width: 100,
      type: 'number',
    },
    {
      ...baseColumnConfig,
      field: 'downVotes',
      headerName: t('edemokracia.admin.Admin.debates.Debate.View.tabBar.arguments.arguments.cons.cons.downVotes', {
        defaultValue: 'down',
      }) as string,
      width: 100,
      type: 'number',
    },
  ];

  const consRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDebatesViewDefaultDebateViewTabBarArgumentsArgumentsConsLabelWrapperConsTitleFilter',
      attributeName: 'title',
      label: t('edemokracia.admin.Admin.debates.Debate.View.tabBar.arguments.arguments.cons.cons.title.Filter', {
        defaultValue: 'Title',
      }) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDebatesViewDefaultDebateViewTabBarArgumentsArgumentsConsLabelWrapperConsUpVotesFilter',
      attributeName: 'upVotes',
      label: t('edemokracia.admin.Admin.debates.Debate.View.tabBar.arguments.arguments.cons.cons.upVotes.Filter', {
        defaultValue: 'up',
      }) as string,
      filterType: FilterType.numeric,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDebatesViewDefaultDebateViewTabBarArgumentsArgumentsConsLabelWrapperConsDownVotesFilter',
      attributeName: 'downVotes',
      label: t('edemokracia.admin.Admin.debates.Debate.View.tabBar.arguments.arguments.cons.cons.downVotes.Filter', {
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
      headerName: t('edemokracia.admin.Admin.debates.Debate.View.tabBar.arguments.arguments.pros.pros.title', {
        defaultValue: 'Title',
      }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'upVotes',
      headerName: t('edemokracia.admin.Admin.debates.Debate.View.tabBar.arguments.arguments.pros.pros.upVotes', {
        defaultValue: 'up',
      }) as string,
      width: 100,
      type: 'number',
    },
    {
      ...baseColumnConfig,
      field: 'downVotes',
      headerName: t('edemokracia.admin.Admin.debates.Debate.View.tabBar.arguments.arguments.pros.pros.downVotes', {
        defaultValue: 'down',
      }) as string,
      width: 100,
      type: 'number',
    },
  ];

  const prosRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDebatesViewDefaultDebateViewTabBarArgumentsArgumentsProsLabelWrapperProsTitleFilter',
      attributeName: 'title',
      label: t('edemokracia.admin.Admin.debates.Debate.View.tabBar.arguments.arguments.pros.pros.title.Filter', {
        defaultValue: 'Title',
      }) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDebatesViewDefaultDebateViewTabBarArgumentsArgumentsProsLabelWrapperProsUpVotesFilter',
      attributeName: 'upVotes',
      label: t('edemokracia.admin.Admin.debates.Debate.View.tabBar.arguments.arguments.pros.pros.upVotes.Filter', {
        defaultValue: 'up',
      }) as string,
      filterType: FilterType.numeric,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDebatesViewDefaultDebateViewTabBarArgumentsArgumentsProsLabelWrapperProsDownVotesFilter',
      attributeName: 'downVotes',
      label: t('edemokracia.admin.Admin.debates.Debate.View.tabBar.arguments.arguments.pros.pros.downVotes.Filter', {
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
      headerName: t('edemokracia.admin.Admin.debates.Debate.View.tabBar.comments.comments.comments.comments.created', {
        defaultValue: 'Created',
      }) as string,
      width: 170,
      type: 'dateTime',
    },
    {
      ...baseColumnConfig,
      field: 'comment',
      headerName: t('edemokracia.admin.Admin.debates.Debate.View.tabBar.comments.comments.comments.comments.comment', {
        defaultValue: 'Comment',
      }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'createdByName',
      headerName: t(
        'edemokracia.admin.Admin.debates.Debate.View.tabBar.comments.comments.comments.comments.createdByName',
        { defaultValue: 'Created by' },
      ) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'upVotes',
      headerName: t('edemokracia.admin.Admin.debates.Debate.View.tabBar.comments.comments.comments.comments.upVotes', {
        defaultValue: 'up',
      }) as string,
      width: 100,
      type: 'number',
    },
    {
      ...baseColumnConfig,
      field: 'downVotes',
      headerName: t(
        'edemokracia.admin.Admin.debates.Debate.View.tabBar.comments.comments.comments.comments.downVotes',
        { defaultValue: 'down' },
      ) as string,
      width: 100,
      type: 'number',
    },
  ];

  const commentsRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDebatesViewDefaultDebateViewTabBarCommentsCommentsCommentsLabelWrapperCommentsCreatedFilter',
      attributeName: 'created',
      label: t(
        'edemokracia.admin.Admin.debates.Debate.View.tabBar.comments.comments.comments.comments.created.Filter',
        { defaultValue: 'Created' },
      ) as string,
      filterType: FilterType.dateTime,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDebatesViewDefaultDebateViewTabBarCommentsCommentsCommentsLabelWrapperCommentsCommentFilter',
      attributeName: 'comment',
      label: t(
        'edemokracia.admin.Admin.debates.Debate.View.tabBar.comments.comments.comments.comments.comment.Filter',
        { defaultValue: 'Comment' },
      ) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDebatesViewDefaultDebateViewTabBarCommentsCommentsCommentsLabelWrapperCommentsCreatedByNameFilter',
      attributeName: 'createdByName',
      label: t(
        'edemokracia.admin.Admin.debates.Debate.View.tabBar.comments.comments.comments.comments.createdByName.Filter',
        { defaultValue: 'Created by' },
      ) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDebatesViewDefaultDebateViewTabBarCommentsCommentsCommentsLabelWrapperCommentsUpVotesFilter',
      attributeName: 'upVotes',
      label: t(
        'edemokracia.admin.Admin.debates.Debate.View.tabBar.comments.comments.comments.comments.upVotes.Filter',
        { defaultValue: 'up' },
      ) as string,
      filterType: FilterType.numeric,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminDebatesViewDefaultDebateViewTabBarCommentsCommentsCommentsLabelWrapperCommentsDownVotesFilter',
      attributeName: 'downVotes',
      label: t(
        'edemokracia.admin.Admin.debates.Debate.View.tabBar.comments.comments.comments.comments.downVotes.Filter',
        { defaultValue: 'down' },
      ) as string,
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

  const issueSortModel: GridSortModel = [{ field: 'representation', sort: 'asc' }];

  const voteDefinitionSortModel: GridSortModel = [{ field: 'title', sort: 'asc' }];

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
