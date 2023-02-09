///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression:
// Path expression: 'src/components/CustomBreadcrumb.tsx'
// Template name: actor/src/components/CustomBreadcrumb.tsx.hbs

import { Breadcrumbs, Typography } from '@mui/material';
import { useState, useContext, createContext, useMemo, useEffect } from 'react';
import type { ReactNode } from 'react';
import { useLocation, useNavigate } from 'react-router-dom';
import type { To } from 'react-router-dom';
import { MdiIcon } from './MdiIcon';

interface BreadcrumbProviderProps {
  children: ReactNode;
}

export type JudoNavigationSetTitle = (pageTitle: string) => void;

interface JudoNavigationProviderContext {
  clearNavigate: (to: To, signedId?: string) => void;
  navigate: (to: To, signedId?: string) => void;
  back: () => void;
  isBackDisabled: boolean;
  setTitle: JudoNavigationSetTitle;
}

interface BreadcrumbItem {
  key: string;
  path: To;
  label: string | null;
}

// @ts-ignore
const JudoNavigationContextState = createContext<JudoNavigationProviderContext>();

const BreadcrumbContextState = createContext<BreadcrumbItem[]>([]);

export const useJudoNavigation = () => {
  const context = useContext(JudoNavigationContextState);

  if (context === undefined) {
    throw new Error('useJudoNavigation was used outside its Provider');
  }

  return context;
};

export const BreadcrumbProvider = ({ children }: BreadcrumbProviderProps) => {
  const navigate = useNavigate();
  const location = useLocation();

  const [breadcrumbItems, setBreadcrumbItems] = useState<BreadcrumbItem[]>([]);
  const [nextBreadcrumbItem, setNextBreadcrumbItem] = useState<BreadcrumbItem>({} as unknown as BreadcrumbItem);

  useEffect(() => {
    setNextBreadcrumbItem((prevNextBreadcrumbItem) => {
      return {
        ...prevNextBreadcrumbItem,
        key: '0.' + location.pathname,
        path: location.pathname,
      };
    });
  }, []);

  const isBackDisabled = useMemo(() => {
    return breadcrumbItems.length === 0;
  }, [breadcrumbItems]);

  const judoNavigationContext = {
    clearNavigate: (to: To, signedId?: string) => {
      const target = signedId ? to.toString().replace(':signedIdentifier', signedId) : to;

      setBreadcrumbItems([]);
      setNextBreadcrumbItem({
        key: '0.' + target.toString(),
        label: null,
        path: target,
      });

      navigate(target);
    },
    navigate: (to: To, signedId?: string) => {
      const target = signedId ? to.toString().replace(':signedIdentifier', signedId) : to;

      if (nextBreadcrumbItem.label === null) {
        throw Error('Page title has not been set!');
      }

      setBreadcrumbItems((prevBreadCrumbItems) => {
        return [...prevBreadCrumbItems, nextBreadcrumbItem];
      });

      setNextBreadcrumbItem({
        key: breadcrumbItems.length + '.' + target.toString(),
        label: null,
        path: target,
      });

      navigate(target);
    },
    back: () => {
      if (breadcrumbItems.length !== 0) {
        const lastItem = breadcrumbItems[breadcrumbItems.length - 1];
        setNextBreadcrumbItem(lastItem);
        setBreadcrumbItems((prevBreadcrumbItems) => {
          return [...prevBreadcrumbItems.slice(0, prevBreadcrumbItems.length - 1)];
        });
        navigate(lastItem.path);
        return;
      }

      setBreadcrumbItems([]);
      setNextBreadcrumbItem({
        key: '0.' + '/'.toString(),
        label: null,
        path: '/',
      });

      navigate('/');
    },
    isBackDisabled: isBackDisabled,
    setTitle: (pageTitle: string) => {
      setNextBreadcrumbItem((prevNextBreadcrumbItem) => {
        return { ...prevNextBreadcrumbItem, label: pageTitle };
      });
    },
  };

  return (
    <BreadcrumbContextState.Provider value={breadcrumbItems}>
      <JudoNavigationContextState.Provider value={judoNavigationContext}>
        {children}
      </JudoNavigationContextState.Provider>
    </BreadcrumbContextState.Provider>
  );
};

export const CustomBreadcrumb = () => {
  const breadcrumbItems = useContext(BreadcrumbContextState);

  return (
    <Breadcrumbs maxItems={2} separator=">">
      <MdiIcon path="home" />
      {breadcrumbItems.map(({ label, key }, index) => {
        return (
          <Typography color="text.primary" key={key}>
            {label}
          </Typography>
        );
      })}
    </Breadcrumbs>
  );
};
