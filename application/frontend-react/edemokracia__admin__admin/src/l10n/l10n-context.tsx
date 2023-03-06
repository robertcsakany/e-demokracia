import { createContext, useContext, useState, useEffect } from 'react';
import type { ReactNode } from 'react';
import { LocalizationProvider } from '@mui/x-date-pickers';
import { AdapterDayjs } from '@mui/x-date-pickers/AdapterDayjs';
import { I18nextProvider } from 'react-i18next';
import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';

export interface L10NContext {
  locale: string;
  setLocale: (newLocale: string) => void;
}

const L10NContext = createContext<L10NContext>({} as unknown as L10NContext);

export const L10NProvider = ({ children }: { children: ReactNode }) => {
  const defaultLocale = '' || 'default';
  const [locale, setLocale] = useState<string>(defaultLocale);
  const [translation, setTranslation] = useState<any>(null);

  useEffect(() => {
    (async () => {
      let dataSystem: { translation: any } = { translation: {} };
      let dataApplication: { translation: any } = { translation: {} };

      try {
        const responseSystem = await fetch(`i18n/system_${locale}.json`);
        dataSystem = await responseSystem.json();
        const responseApplication = await fetch(`i18n/application_${locale}.json`);
        dataApplication = await responseApplication.json();
      } catch (error) {
        console.error(`Error fetching i18n resources: ${error}`);
      }

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
    <L10NContext.Provider value={{ locale, setLocale }}>
      <LocalizationProvider dateAdapter={AdapterDayjs} adapterLocale={locale !== 'default' ? locale : undefined}>
        <I18nextProvider i18n={i18n}>{translation && children}</I18nextProvider>
      </LocalizationProvider>
    </L10NContext.Provider>
  );
};

export const useL10N = () => {
  const { locale, setLocale } = useContext(L10NContext);

  return { locale, setLocale };
};
