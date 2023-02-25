///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: 'src/App.tsx'
// Template name: actor/src/App.tsx.hbs

import { useEffect, useState } from 'react';
import { ThemeProvider } from '@mui/material';
import { L10NProvider } from './l10n/l10n-context';
import { theme } from './theme';
import { DialogProvider, BreadcrumbProvider, SnackProvider, MdiIcon } from './components';
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
          <SnackProvider>
            <DialogProvider>
              <BreadcrumbProvider>
                <Layout items={menuItems} drawerWidth={drawerWidth} logo={logoProps} hero={heroProps} />
              </BreadcrumbProvider>
            </DialogProvider>
          </SnackProvider>
        </PrincipalProvider>
      </ThemeProvider>
    </L10NProvider>
  );
}

export default App;
