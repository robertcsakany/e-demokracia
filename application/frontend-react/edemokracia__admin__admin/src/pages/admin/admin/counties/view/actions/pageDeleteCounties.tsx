///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::counties#PageDelete
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from '../../../../../../components';
import { errorHandling } from '../../../../../../utilities';
import { AdminCountyQueryCustomizer, AdminCounty, AdminCountyStored } from '../../../../../../generated/data-api';
import { adminAdminServiceForCountiesImpl, adminCountyServiceImpl } from '../../../../../../generated/data-axios';

export type PageDeleteCountiesAction = () => (
  selected: AdminCountyStored,
  successCallback: () => void,
) => Promise<void>;

export const usePageDeleteCountiesAction: PageDeleteCountiesAction = () => {
  const [enqueueSnackbar] = useSnackbar();

  return async function pageDeleteCountiesAction(selected: AdminCountyStored, successCallback: () => void) {
    try {
      await adminCountyServiceImpl.delete(selected);

      successCallback();
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    }
  };
};
