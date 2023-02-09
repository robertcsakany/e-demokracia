///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getPagesForRouting(#application)
// Path expression: #pageIndexPath(#self)
// Template name: actor/src/pages/index.tsx.hbs

import { Fragment } from 'react';
import { useTranslation } from 'react-i18next';
import { Paper, Box } from '@mui/material';
import { PageHeader, CustomBreadcrumb, useSnackbar } from '../../../../components';

export default function AdminAdminDashboardhomeDashboard() {
  const { t } = useTranslation();

  return (
    <Fragment>
      <PageHeader title={t('edemokracia.admin.Admin.dashboardhome.Dashboard', { defaultValue: 'Dashboard' })}>
        <Fragment></Fragment>
      </PageHeader>
      <Box component="main" color="inherit" sx={{ flex: 1, py: 6, px: 4 }}>
        <Paper variant="elevation" sx={{ maxWidth: 1280, margin: 'auto', overflow: 'hidden' }}>
          Page contents go here
        </Paper>
      </Box>
    </Fragment>
  );
}
