//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: <actor>
// Path expression: 'src/auth/Auth.tsx'
// Template name: actor/src/auth/Auth.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230425_192230_4503f121_develop
// Template file: actor/src/auth/Auth.tsx.hbs

import type { ReactNode } from 'react';
import { useEffect } from 'react';
import { useAuth, hasAuthParams } from 'react-oidc-context';

export const Auth = ({ children }: { children?: ReactNode }) => {
  const { isAuthenticated, isLoading, activeNavigator, signinRedirect } = useAuth();

  // automatically sign-in
  useEffect(() => {
    if (!hasAuthParams() && !isAuthenticated && !activeNavigator && !isLoading) {
      signinRedirect();
    }
  }, [isAuthenticated, activeNavigator, isLoading, signinRedirect]);

  useEffect(() => {
    // workaround for oidc redirect issue where query string params are filled before the hash...
    if (isAuthenticated && !activeNavigator && !isLoading) {
      if (window.location.href.includes(window.location.pathname + '?')) {
        window.location.replace(window.location.href.replace(window.location.search, ''));
      }
    }
  }, [isAuthenticated, activeNavigator, isLoading]);

  if (activeNavigator) {
    return <div>Signing you in/out...</div>;
  }

  if (!isAuthenticated) {
    return <div>Unable to log in</div>;
  }

  return <>{children}</>;
};
