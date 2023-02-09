///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Pro::cons#PageDelete
// Action owner name: edemokracia::admin::Pro.cons#View
// Action DataElement name: cons
// Action DataElement owner name: edemokracia::admin::Pro
// Action DataElement target name: edemokracia::admin::Con
// Owner Page name: edemokracia::admin::Pro.cons#View
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from '../../../../../../components';
import { errorHandling } from '../../../../../../utilities';
import {
  AdminProStored,
  AdminCon,
  AdminConStored,
  AdminConQueryCustomizer,
  AdminPro,
} from '../../../../../../generated/data-api';
import { adminProServiceForConsImpl, adminConServiceImpl } from '../../../../../../generated/data-axios';

export type PageDeleteConsAction = () => (
  owner: JudoIdentifiable<AdminPro>,
  selected: AdminConStored,
  successCallback: () => void,
) => Promise<void>;

export const usePageDeleteConsAction: PageDeleteConsAction = () => {
  const [enqueueSnackbar] = useSnackbar();

  return async function pageDeleteConsAction(
    owner: JudoIdentifiable<AdminPro>,
    selected: AdminConStored,
    successCallback: () => void,
  ) {
    try {
      await adminProServiceForConsImpl.deleteCons(owner, selected);

      successCallback();
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    }
  };
};
