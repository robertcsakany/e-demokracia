///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Con::pros#PageDelete
// Action owner name: edemokracia::admin::Con.pros#View
// Action DataElement name: pros
// Action DataElement owner name: edemokracia::admin::Con
// Action DataElement target name: edemokracia::admin::Pro
// Owner Page name: edemokracia::admin::Con.pros#View
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from '../../../../../../components';
import { errorHandling } from '../../../../../../utilities';
import {
  AdminProStored,
  AdminProQueryCustomizer,
  AdminCon,
  AdminConStored,
  AdminPro,
} from '../../../../../../generated/data-api';
import { adminConServiceForProsImpl, adminProServiceImpl } from '../../../../../../generated/data-axios';

export type PageDeleteProsAction = () => (
  owner: JudoIdentifiable<AdminCon>,
  selected: AdminProStored,
  successCallback: () => void,
) => Promise<void>;

export const usePageDeleteProsAction: PageDeleteProsAction = () => {
  const [enqueueSnackbar] = useSnackbar();

  return async function pageDeleteProsAction(
    owner: JudoIdentifiable<AdminCon>,
    selected: AdminProStored,
    successCallback: () => void,
  ) {
    try {
      await adminConServiceForProsImpl.deletePros(owner, selected);

      successCallback();
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    }
  };
};