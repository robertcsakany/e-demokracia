///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Con::pros#RowDelete
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from '../../../../../../../components';
import { errorHandling } from '../../../../../../../utilities';
import {
  AdminProStored,
  AdminProQueryCustomizer,
  AdminCon,
  AdminConStored,
  AdminPro,
} from '../../../../../../../generated/data-api';
import { adminConServiceForProsImpl, adminProServiceImpl } from '../../../../../../../generated/data-axios';

export type RowDeleteProsAction = () => (
  owner: JudoIdentifiable<AdminCon>,
  selected: AdminProStored,
  successCallback: () => void,
) => Promise<void>;

export const useRowDeleteProsAction: RowDeleteProsAction = () => {
  const [enqueueSnackbar] = useSnackbar();

  return async function rowDeleteProsAction(
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
