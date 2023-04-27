//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pagePath(#self)+'hooks/use'+#pageName(#self)+'.tsx'
// Template name: actor/src/pages/hooks.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230425_192230_4503f121_develop
// Template file: actor/src/pages/hooks.tsx.hbs
// Hook: Relation View

import { useTranslation } from 'react-i18next';
import type {
  GridColDef,
  GridRenderCellParams,
  GridRowParams,
  GridSortModel,
  GridValueFormatterParams,
} from '@mui/x-data-grid';
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
  AdminVoteDefinitionStored,
  EdemokraciaDebateStatus,
  AdminProStored,
  AdminDebate,
  AdminIssue,
  AdminConQueryCustomizer,
  AdminVoteDefinition,
  AdminCommentStored,
} from '../../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';
import { fileHandling, serviceDateToUiDate } from '../../../../../../utilities';
import { useL10N } from '../../../../../../l10n/l10n-context';

export const useAdminVoteDefinitionDebateView = () => {
  const { t } = useTranslation();
  const { downloadFile, extractFileNameFromToken, uploadFile } = fileHandling();
  const { locale: l10nLocale } = useL10N();

  const queryCustomizer: AdminDebateQueryCustomizer = {
    _mask:
      '{title,status,closeAt,description,issue{representation},createdBy{representation},voteDefinition{title,created,status,closeAt},pros{title,upVotes,downVotes},cons{title,upVotes,downVotes},comments{created,comment,createdByName,upVotes,downVotes}}',
  };

  const consSortModel: GridSortModel = [{ field: 'title', sort: 'asc' }];

  const consColumns: GridColDef<AdminConStored>[] = [
    {
      ...baseColumnConfig,
      field: 'title',
      headerName: t('edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.arguments.arguments.cons.cons.title', {
        defaultValue: 'Title',
      }) as string,
      headerClassName: 'data-grid-column-header',
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'upVotes',
      headerName: t(
        'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.arguments.arguments.cons.cons.upVotes',
        { defaultValue: 'up' },
      ) as string,
      headerClassName: 'data-grid-column-header',
      width: 100,
      type: 'number',
      valueFormatter: ({ value }: GridValueFormatterParams<number>) => {
        return value && new Intl.NumberFormat(l10nLocale).format(value);
      },
    },
    {
      ...baseColumnConfig,
      field: 'downVotes',
      headerName: t(
        'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.arguments.arguments.cons.cons.downVotes',
        { defaultValue: 'down' },
      ) as string,
      headerClassName: 'data-grid-column-header',
      width: 100,
      type: 'number',
      valueFormatter: ({ value }: GridValueFormatterParams<number>) => {
        return value && new Intl.NumberFormat(l10nLocale).format(value);
      },
    },
  ];

  const consRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarArgumentsArgumentsConsLabelWrapperConsTitleFilter',
      attributeName: 'title',
      label: t(
        'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.arguments.arguments.cons.cons.title.Filter',
        { defaultValue: 'Title' },
      ) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarArgumentsArgumentsConsLabelWrapperConsUpVotesFilter',
      attributeName: 'upVotes',
      label: t(
        'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.arguments.arguments.cons.cons.upVotes.Filter',
        { defaultValue: 'up' },
      ) as string,
      filterType: FilterType.numeric,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarArgumentsArgumentsConsLabelWrapperConsDownVotesFilter',
      attributeName: 'downVotes',
      label: t(
        'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.arguments.arguments.cons.cons.downVotes.Filter',
        { defaultValue: 'down' },
      ) as string,
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
      headerName: t('edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.arguments.arguments.pros.pros.title', {
        defaultValue: 'Title',
      }) as string,
      headerClassName: 'data-grid-column-header',
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'upVotes',
      headerName: t(
        'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.arguments.arguments.pros.pros.upVotes',
        { defaultValue: 'up' },
      ) as string,
      headerClassName: 'data-grid-column-header',
      width: 100,
      type: 'number',
      valueFormatter: ({ value }: GridValueFormatterParams<number>) => {
        return value && new Intl.NumberFormat(l10nLocale).format(value);
      },
    },
    {
      ...baseColumnConfig,
      field: 'downVotes',
      headerName: t(
        'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.arguments.arguments.pros.pros.downVotes',
        { defaultValue: 'down' },
      ) as string,
      headerClassName: 'data-grid-column-header',
      width: 100,
      type: 'number',
      valueFormatter: ({ value }: GridValueFormatterParams<number>) => {
        return value && new Intl.NumberFormat(l10nLocale).format(value);
      },
    },
  ];

  const prosRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarArgumentsArgumentsProsLabelWrapperProsTitleFilter',
      attributeName: 'title',
      label: t(
        'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.arguments.arguments.pros.pros.title.Filter',
        { defaultValue: 'Title' },
      ) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarArgumentsArgumentsProsLabelWrapperProsUpVotesFilter',
      attributeName: 'upVotes',
      label: t(
        'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.arguments.arguments.pros.pros.upVotes.Filter',
        { defaultValue: 'up' },
      ) as string,
      filterType: FilterType.numeric,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarArgumentsArgumentsProsLabelWrapperProsDownVotesFilter',
      attributeName: 'downVotes',
      label: t(
        'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.arguments.arguments.pros.pros.downVotes.Filter',
        { defaultValue: 'down' },
      ) as string,
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
      headerName: t(
        'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.comments.comments.comments.comments.created',
        { defaultValue: 'Created' },
      ) as string,
      headerClassName: 'data-grid-column-header',
      width: 170,
      type: 'dateTime',
      valueGetter: ({ value }) => value && serviceDateToUiDate(value),
      valueFormatter: ({ value }: GridValueFormatterParams<Date>) => {
        return (
          value &&
          new Intl.DateTimeFormat(l10nLocale, {
            year: 'numeric',
            month: '2-digit',
            day: '2-digit',
            hour: '2-digit',
            minute: '2-digit',
            second: '2-digit',
            hour12: false,
          }).format(value)
        );
      },
    },
    {
      ...baseColumnConfig,
      field: 'comment',
      headerName: t(
        'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.comments.comments.comments.comments.comment',
        { defaultValue: 'Comment' },
      ) as string,
      headerClassName: 'data-grid-column-header',
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'createdByName',
      headerName: t(
        'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.comments.comments.comments.comments.createdByName',
        { defaultValue: 'Created by' },
      ) as string,
      headerClassName: 'data-grid-column-header',
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'upVotes',
      headerName: t(
        'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.comments.comments.comments.comments.upVotes',
        { defaultValue: 'up' },
      ) as string,
      headerClassName: 'data-grid-column-header',
      width: 100,
      type: 'number',
      valueFormatter: ({ value }: GridValueFormatterParams<number>) => {
        return value && new Intl.NumberFormat(l10nLocale).format(value);
      },
    },
    {
      ...baseColumnConfig,
      field: 'downVotes',
      headerName: t(
        'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.comments.comments.comments.comments.downVotes',
        { defaultValue: 'down' },
      ) as string,
      headerClassName: 'data-grid-column-header',
      width: 100,
      type: 'number',
      valueFormatter: ({ value }: GridValueFormatterParams<number>) => {
        return value && new Intl.NumberFormat(l10nLocale).format(value);
      },
    },
  ];

  const commentsRangeFilterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarCommentsCommentsCommentsLabelWrapperCommentsCreatedFilter',
      attributeName: 'created',
      label: t(
        'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.comments.comments.comments.comments.created.Filter',
        { defaultValue: 'Created' },
      ) as string,
      filterType: FilterType.dateTime,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarCommentsCommentsCommentsLabelWrapperCommentsCommentFilter',
      attributeName: 'comment',
      label: t(
        'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.comments.comments.comments.comments.comment.Filter',
        { defaultValue: 'Comment' },
      ) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarCommentsCommentsCommentsLabelWrapperCommentsCreatedByNameFilter',
      attributeName: 'createdByName',
      label: t(
        'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.comments.comments.comments.comments.createdByName.Filter',
        { defaultValue: 'Created by' },
      ) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarCommentsCommentsCommentsLabelWrapperCommentsUpVotesFilter',
      attributeName: 'upVotes',
      label: t(
        'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.comments.comments.comments.comments.upVotes.Filter',
        { defaultValue: 'up' },
      ) as string,
      filterType: FilterType.numeric,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminVoteDefinitionDebateViewDefaultDebateViewTabBarCommentsCommentsCommentsLabelWrapperCommentsDownVotesFilter',
      attributeName: 'downVotes',
      label: t(
        'edemokracia.admin.VoteDefinition.debate.Debate.View.tabBar.comments.comments.comments.comments.downVotes.Filter',
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
