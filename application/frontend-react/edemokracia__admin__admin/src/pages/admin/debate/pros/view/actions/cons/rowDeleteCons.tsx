///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Pro::cons#RowDelete
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from '../../../../../../../components';
import { errorHandling } from '../../../../../../../utilities';
import {
  AdminProStored,
  AdminCon,
  AdminConStored,
  AdminConQueryCustomizer,
  AdminPro,
} from '../../../../../../../generated/data-api';
import { adminProServiceForConsImpl, adminConServiceImpl } from '../../../../../../../generated/data-axios';

export type RowDeleteConsAction = () => (
  owner: JudoIdentifiable<AdminPro>,
  selected: AdminConStored,
  successCallback: () => void,
) => Promise<void>;

export const useRowDeleteConsAction: RowDeleteConsAction = () => {
  const [enqueueSnackbar] = useSnackbar();

  return async function rowDeleteConsAction(
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
