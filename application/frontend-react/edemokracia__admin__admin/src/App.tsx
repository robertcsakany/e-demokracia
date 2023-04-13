//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/App.tsx'
// Template name: actor/src/App.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_041932_3a0d360a_develop
// Template file: actor/src/App.tsx.hbs

import { useEffect, useState } from 'react';
import { IconButton, ThemeProvider } from '@mui/material';
import { SnackbarProvider, closeSnackbar } from 'notistack';
import { L10NProvider } from './l10n/l10n-context';
import { theme } from './theme';
import { BreadcrumbProvider, MdiIcon } from './components';
import { DialogProvider } from './components/dialog';
import { Layout } from './layout';
import { menuItems } from './menu-items';
import { useHeroProps, useLogoProps } from './hooks';
import { PrincipalProvider } from './auth';

function App() {
  const [drawerWidth] = useState<number>(300);
  const heroProps = useHeroProps();
  const logoProps = useLogoProps();

  return (
    <L10NProvider>
      <ThemeProvider theme={theme}>
        <PrincipalProvider>
          <SnackbarProvider
            maxSnack={3}
            action={(snackbarId) => (
              <IconButton style={{ color: '#fff' }} onClick={() => closeSnackbar(snackbarId)}>
                <MdiIcon path="close" />
              </IconButton>
            )}
          >
            <DialogProvider>
              <BreadcrumbProvider>
                <Layout items={menuItems} drawerWidth={drawerWidth} logo={logoProps} hero={heroProps} />
              </BreadcrumbProvider>
            </DialogProvider>
          </SnackbarProvider>
        </PrincipalProvider>
      </ThemeProvider>
    </L10NProvider>
  );
}

export default App;
