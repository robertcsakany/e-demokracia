//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pagePath(#self)+'hooks/use'+#pageName(#self)+'.tsx'
// Template name: actor/src/pages/hooks.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_041932_3a0d360a_develop
// Template file: actor/src/pages/hooks.tsx.hbs
// Hook: Access Table

import type { GridColDef, GridRenderCellParams, GridRowParams } from '@mui/x-data-grid';
import { Button } from '@mui/material';
import { useTranslation } from 'react-i18next';
import { FilterType } from '../../../../../../components-api';
import type { FilterOption } from '../../../../../../components-api';
import { MdiIcon, useJudoNavigation } from '../../../../../../components';
import { fileHandling } from '../../../../../../utilities';
import { AdminUserStored } from '../../../../../../generated/data-api';
import { baseColumnConfig, toastConfig } from '../../../../../../config';

export const useAdminAdminUsersTable = () => {
  const { navigate } = useJudoNavigation();
  const { t } = useTranslation();
  const { downloadFile, uploadFile } = fileHandling();

  const columns: GridColDef<AdminUserStored>[] = [
    {
      ...baseColumnConfig,
      field: 'userName',
      headerName: t('edemokracia.admin.Admin.users.users.User.Table.userName', { defaultValue: 'Username' }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'isAdmin',
      headerName: t('edemokracia.admin.Admin.users.users.User.Table.isAdmin', {
        defaultValue: 'Has admin access',
      }) as string,
      width: 100,
      type: 'boolean',
      align: 'center',
      renderCell: (params: GridRenderCellParams<any, AdminUserStored>) => {
        return params.row.isAdmin ? (
          <MdiIcon path="check-circle" color="green" />
        ) : (
          <MdiIcon path="close-circle" color="red" />
        );
      },
    },
    {
      ...baseColumnConfig,
      field: 'firstName',
      headerName: t('edemokracia.admin.Admin.users.users.User.Table.firstName', {
        defaultValue: 'First name',
      }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'lastName',
      headerName: t('edemokracia.admin.Admin.users.users.User.Table.lastName', { defaultValue: 'Last name' }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'phone',
      headerName: t('edemokracia.admin.Admin.users.users.User.Table.phone', { defaultValue: 'Phone' }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'email',
      headerName: t('edemokracia.admin.Admin.users.users.User.Table.email', { defaultValue: 'Email' }) as string,
      width: 230,
      type: 'string',
    },
    {
      ...baseColumnConfig,
      field: 'created',
      headerName: t('edemokracia.admin.Admin.users.users.User.Table.created', { defaultValue: 'Created' }) as string,
      width: 170,
      type: 'dateTime',
    },
  ];

  const filterOptions: FilterOption[] = [
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminUsersTableDefaultUsersUserTableUserNameFilter',
      attributeName: 'userName',
      label: t('edemokracia.admin.Admin.users.users.User.Table.userName.Filter', {
        defaultValue: 'Username',
      }) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminUsersTableDefaultUsersUserTableIsAdminFilter',
      attributeName: 'isAdmin',
      label: t('edemokracia.admin.Admin.users.users.User.Table.isAdmin.Filter', {
        defaultValue: 'Has admin access',
      }) as string,
      filterType: FilterType.boolean,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminUsersTableDefaultUsersUserTableFirstNameFilter',
      attributeName: 'firstName',
      label: t('edemokracia.admin.Admin.users.users.User.Table.firstName.Filter', {
        defaultValue: 'First name',
      }) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminUsersTableDefaultUsersUserTableLastNameFilter',
      attributeName: 'lastName',
      label: t('edemokracia.admin.Admin.users.users.User.Table.lastName.Filter', {
        defaultValue: 'Last name',
      }) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminUsersTableDefaultUsersUserTablePhoneFilter',
      attributeName: 'phone',
      label: t('edemokracia.admin.Admin.users.users.User.Table.phone.Filter', { defaultValue: 'Phone' }) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminUsersTableDefaultUsersUserTableEmailFilter',
      attributeName: 'email',
      label: t('edemokracia.admin.Admin.users.users.User.Table.email.Filter', { defaultValue: 'Email' }) as string,
      filterType: FilterType.string,
    },
    {
      id: 'FilteredemokraciaAdminAdminEdemokraciaAdminAdminUsersTableDefaultUsersUserTableCreatedFilter',
      attributeName: 'created',
      label: t('edemokracia.admin.Admin.users.users.User.Table.created.Filter', { defaultValue: 'Created' }) as string,
      filterType: FilterType.dateTime,
    },
  ];

  return {
    columns,
    filterOptions,
  };
};
