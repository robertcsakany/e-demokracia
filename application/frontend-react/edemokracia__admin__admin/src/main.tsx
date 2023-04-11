///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: 'src/main.tsx'
// Template name: actor/src/main.tsx.hbs

import '@fontsource/roboto/300.css';
import '@fontsource/roboto/400.css';
import '@fontsource/roboto/500.css';
import '@fontsource/roboto/700.css';
import '@mdi/font/css/materialdesignicons.css';

import { createRoot } from 'react-dom/client';
import axios from 'axios';
import { createHashRouter, RouterProvider } from 'react-router-dom';
import Pandino from '@pandino/pandino';
import loaderConfiguration from '@pandino/loader-configuration-dom';
import { PandinoProvider } from '@pandino/react-hooks';
import { AuthProvider } from 'react-oidc-context';
import { axiosRequestInterceptor, Auth, storeMeta, getUser, appBaseUri } from './auth';
import { applicationCustomizer } from './custom';
import { accessServiceImpl, judoAxiosProvider } from './generated/data-axios';
import App from './App';
import { routes } from './routes';

axios.interceptors.request.use(axiosRequestInterceptor);

const API_DEFAULT_BASE_URL: string = import.meta.env.VITE_API_DEFAULT_BASE_URL || window.location.origin;
const API_RELATIVE_PATH: string = import.meta.env.VITE_API_RELATIVE_PATH || '/api';
// precedence: explicit file -> explicit api -> window.location.origin
const FILE_DEFAULT_BASE_URL: string = import.meta.env.VITE_FILE_DEFAULT_BASE_URL || API_DEFAULT_BASE_URL;

(async () => {
  const pandino = new Pandino({
    ...loaderConfiguration,
  });

  await pandino.init();
  await pandino.start();

  await applicationCustomizer.customize(pandino.getBundleContext());

  judoAxiosProvider.init({
    axios,
    basePathFactory: () => API_DEFAULT_BASE_URL + API_RELATIVE_PATH,
    filePathFactory: () => FILE_DEFAULT_BASE_URL + '/Edemokracia',
  });

  const root = createRoot(document.getElementById('root') as HTMLElement);

  const router = createHashRouter([
    {
      path: '/',
      element: <App />,
      children: [...routes.map(({ path, element }) => ({ path, element }))],
    },
  ]);

  const meta = await accessServiceImpl.getMetaData();
  const { clientId, defaultScopes, issuer } = meta.security[0];
  storeMeta({ issuer, clientId });

  const oidcConfig = {
    authority: issuer,
    client_id: clientId,
    redirect_uri: appBaseUri,
    automaticSilentRenew: true,
  };

  root.render(
    <PandinoProvider ctx={pandino.getBundleContext()}>
      <AuthProvider {...oidcConfig}>
        <Auth>
          <RouterProvider router={router} />
        </Auth>
      </AuthProvider>
    </PandinoProvider>,
  );
})();
