//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/l10n/l10n-context.tsx'
// Template name: actor/src/l10n/l10n-context.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_174054_1b98627b_develop
// Template file: actor/src/l10n/l10n-context.tsx.hbs

import enUS from 'date-fns/locale/en-US';
import { createContext, useContext, useState, useEffect } from 'react';
import type { ReactNode } from 'react';
import { LocalizationProvider } from '@mui/x-date-pickers';
import { AdapterDateFns } from '@mui/x-date-pickers/AdapterDateFns';
import { I18nextProvider } from 'react-i18next';
import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import { OBJECTCLASS, ServiceReference } from '@pandino/pandino-api';
import { useTrackService, useBundleContext } from '@pandino/react-hooks';

const locales = {
  default: undefined,
  'en-US': enUS,
};

type LocaleKey = keyof typeof locales;

export interface L10NContext {
  locale: LocaleKey;
  setLocale: (newLocale: LocaleKey) => void;
}

const L10NContext = createContext<L10NContext>({} as unknown as L10NContext);

export interface L10NTranslations {
  systemTranslations: Record<string, string>;
  applicationTranslations: Record<string, string>;
}

export const L10N_TRANSLATION_PROVIDER_INTERFACE_KEY = 'L10NTranslationProvider';

export interface L10NTranslationProvider {
  provideTranslations(locale: string): Promise<L10NTranslations>;
}
export const L10NProvider = ({ children }: { children: ReactNode }) => {
  const defaultLocale: LocaleKey = '' || 'default';
  const [locale, setLocale] = useState<LocaleKey>(defaultLocale);
  const [translation, setTranslation] = useState<any>(null);
  const [filter, setFilter] = useState<string>(`(${OBJECTCLASS}=${L10N_TRANSLATION_PROVIDER_INTERFACE_KEY})`);
  const { service: translationProvider } = useTrackService<L10NTranslationProvider>(filter);

  useEffect(() => {
    (async () => {
      let dataSystem: { translation: any } = { translation: {} };
      let dataApplication: { translation: any } = { translation: {} };

      if (translationProvider) {
        const { systemTranslations, applicationTranslations } = await translationProvider.provideTranslations(locale);
        dataSystem = { translation: systemTranslations };
        dataApplication = { translation: applicationTranslations };
      } else {
        try {
          const responseSystem = await fetch(`i18n/system_${locale}.json`);
          dataSystem = await responseSystem.json();
          const responseApplication = await fetch(`i18n/application_${locale}.json`);
          dataApplication = await responseApplication.json();
        } catch (error) {
          console.error(`Error fetching i18n resources: ${error}`);
        }
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
  }, [locale, translationProvider]);

  return (
    <L10NContext.Provider value={{ locale, setLocale }}>
      <LocalizationProvider dateAdapter={AdapterDateFns} adapterLocale={locales[locale]}>
        <I18nextProvider i18n={i18n}>{translation && children}</I18nextProvider>
      </LocalizationProvider>
    </L10NContext.Provider>
  );
};

export const useL10N = () => {
  const { locale, setLocale } = useContext(L10NContext);

  return { locale, setLocale };
};
