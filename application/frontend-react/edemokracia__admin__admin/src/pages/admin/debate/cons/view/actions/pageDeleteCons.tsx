///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Debate::cons#PageDelete
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from '../../../../../../components';
import { errorHandling } from '../../../../../../utilities';
import {
  AdminDebate,
  AdminCon,
  AdminConStored,
  AdminConQueryCustomizer,
  AdminDebateStored,
} from '../../../../../../generated/data-api';
import { adminDebateServiceForConsImpl, adminConServiceImpl } from '../../../../../../generated/data-axios';

export type PageDeleteConsAction = () => (
  owner: JudoIdentifiable<AdminDebate>,
  selected: AdminConStored,
  successCallback: () => void,
) => Promise<void>;

export const usePageDeleteConsAction: PageDeleteConsAction = () => {
  const [enqueueSnackbar] = useSnackbar();

  return async function pageDeleteConsAction(
    owner: JudoIdentifiable<AdminDebate>,
    selected: AdminConStored,
    successCallback: () => void,
  ) {
    try {
      await adminDebateServiceForConsImpl.deleteCons(owner, selected);

      successCallback();
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    }
  };
};
