///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression:
// Path expression: 'src/main.tsx'
// Template name: actor/src/main.tsx.hbs

import { createRoot } from 'react-dom/client';
import axios from 'axios';
import { HashRouter, Route, Routes } from 'react-router-dom';
import { AuthProvider } from 'react-oidc-context';
import { axiosRequestInterceptor, Auth, storeMeta, getUser, appBaseUri } from './auth';
import { accessServiceImpl, judoAxiosProvider } from './generated/data-axios';
import App from './App';
import { routes } from './routes';

axios.interceptors.request.use(axiosRequestInterceptor);

const API_DEFAULT_BASE_URL: string = process.env.API_DEFAULT_BASE_URL || window.location.origin;
const API_RELATIVE_PATH: string = process.env.API_RELATIVE_PATH || '/api';
// precedence: explicit file -> explicit api -> window.location.origin
const FILE_DEFAULT_BASE_URL: string = process.env.FILE_DEFAULT_BASE_URL || API_DEFAULT_BASE_URL;

judoAxiosProvider.init({
  axios,
  basePathFactory: () => API_DEFAULT_BASE_URL + API_RELATIVE_PATH,
  filePathFactory: () => FILE_DEFAULT_BASE_URL + '/Edemokracia',
});

const root = createRoot(document.getElementById('root') as HTMLElement);

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
  <AuthProvider {...oidcConfig}>
    <Auth>
      <HashRouter>
        <Routes>
          <Route path="/" element={<App />}>
            {routes.map((route) => (
              <Route key={route.path} path={route.path} element={route.element} />
            ))}
          </Route>
        </Routes>
      </HashRouter>
      ,
    </Auth>
  </AuthProvider>,
);
