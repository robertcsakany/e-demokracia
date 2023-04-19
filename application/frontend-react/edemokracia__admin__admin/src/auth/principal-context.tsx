//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/auth/principal-context.tsx'
// Template name: actor/src/auth/principal-context.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230419_114141_e53c8a6f_develop
// Template file: actor/src/auth/principal-context.tsx.hbs

import { createContext, useContext, useState, useEffect } from 'react';
import type { ReactNode } from 'react';
import { useAuth } from 'react-oidc-context';
import { AdminAdminPrincipalUserStored } from '../generated/data-api';
import { accessServiceImpl } from '../generated/data-axios';

export interface PrincipalContext {
  principal: AdminAdminPrincipalUserStored;
  setPrincipal: (principal: AdminAdminPrincipalUserStored) => void;
  getPrincipal: () => Promise<AdminAdminPrincipalUserStored>;
}

const PrincipalContext = createContext<PrincipalContext>({} as unknown as PrincipalContext);

export const PrincipalProvider = ({ children }: { children: ReactNode }) => {
  const [principal, setPrincipal] = useState<AdminAdminPrincipalUserStored>(
    {} as unknown as AdminAdminPrincipalUserStored,
  );
  const { isAuthenticated } = useAuth();

  const fetchData = async () => {
    try {
      const data = await accessServiceImpl.getPrincipal();
      setPrincipal({ ...data });
    } catch (e) {
      console.error(e);
    }
  };

  const getPrincipal = (): Promise<AdminAdminPrincipalUserStored> => accessServiceImpl.getPrincipal();

  useEffect(() => {
    if (isAuthenticated) {
      fetchData();
    } else {
      setPrincipal({} as unknown as AdminAdminPrincipalUserStored);
    }
  }, [isAuthenticated]);

  return (
    <PrincipalContext.Provider value={{ principal, setPrincipal, getPrincipal }}>{children}</PrincipalContext.Provider>
  );
};

export const usePrincipal = () => {
  const { principal, setPrincipal, getPrincipal } = useContext(PrincipalContext);

  return { principal, setPrincipal, getPrincipal };
};
