///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression:
// Path expression: 'src/App.tsx'
// Template name: actor/src/App.tsx.hbs

import { useEffect, useState } from 'react';
import { ThemeProvider } from '@mui/material';
import { I18nextProvider } from 'react-i18next';
import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import { LocalizationProvider } from '@mui/x-date-pickers';
import { AdapterDayjs } from '@mui/x-date-pickers/AdapterDayjs';
import { theme } from './theme';
import { DialogProvider, BreadcrumbProvider, SnackProvider, MdiIcon } from './components';
import { Layout } from './layout';
import { menuItems } from './menu-items';
import { useHeroProps, useLogoProps } from './hooks';
import { PrincipalProvider } from './auth';

function App() {
  const defaultLocale = '' || 'default';
  const [locale] = useState<string>(defaultLocale);
  const [translation, setTranslation] = useState<any>(null);
  const [drawerWidth] = useState<number>(300);
  const heroProps = useHeroProps();
  const logoProps = useLogoProps();

  useEffect(() => {
    (async () => {
      const responseSystem = await fetch(`i18n/system_${locale}.json`);
      const dataSystem = await responseSystem.json();
      const responseApplication = await fetch(`i18n/application_${locale}.json`);
      const dataApplication = await responseApplication.json();

      setTranslation({
        ...dataSystem.translation,
        ...dataApplication.translation,
      });

      i18n.use(initReactI18next).init({
        resources: {
          [locale]: {
            translation: {
              ...dataSystem.translation,
              ...dataApplication.translation,
            },
          },
        },
        lng: locale,
        interpolation: {
          escapeValue: false,
        },
      });
    })();
  }, [locale]);

  return (
    <LocalizationProvider dateAdapter={AdapterDayjs}>
      <ThemeProvider theme={theme}>
        <I18nextProvider i18n={i18n}>
          <PrincipalProvider>
            <SnackProvider>
              <DialogProvider>
                <BreadcrumbProvider>
                  {translation ? (
                    <Layout items={menuItems} drawerWidth={drawerWidth} logo={logoProps} hero={heroProps} />
                  ) : null}
                </BreadcrumbProvider>
              </DialogProvider>
            </SnackProvider>
          </PrincipalProvider>
        </I18nextProvider>
      </ThemeProvider>
    </LocalizationProvider>
  );
}

export default App;
