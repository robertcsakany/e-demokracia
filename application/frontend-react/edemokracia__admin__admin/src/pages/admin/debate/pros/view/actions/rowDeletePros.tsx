//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Base URL: mvn:hu.blackbelt.judo.generator:judo-ui-react:1.0.0.20230413_041932_3a0d360a_develop
// Template file: actor/src/pages/actions/action.tsx.hbs
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { OBJECTCLASS } from '@pandino/pandino-api';
import { useSnackbar } from 'notistack';
import { useErrorHandler, ERROR_PROCESSOR_HOOK_INTERFACE_KEY } from '../../../../../../utilities';
import { AdminProStored, AdminProQueryCustomizer, AdminPro } from '../../../../../../generated/data-api';
import { adminProServiceForProsImpl, adminProServiceImpl } from '../../../../../../generated/data-axios';

export type RowDeleteProsAction = () => (
  owner: JudoIdentifiable<AdminPro>,
  selected: AdminProStored,
  successCallback: () => void,
) => Promise<void>;

export const useRowDeleteProsAction: RowDeleteProsAction = () => {
  const { enqueueSnackbar } = useSnackbar();
  const handleActionError = useErrorHandler<JudoIdentifiable<AdminPro>>(
    `(&(${OBJECTCLASS}=${ERROR_PROCESSOR_HOOK_INTERFACE_KEY})(operation=RowDeleteAction))`,
  );

  return async function rowDeleteProsAction(
    owner: JudoIdentifiable<AdminPro>,
    selected: AdminProStored,
    successCallback: () => void,
  ) {
    try {
      await adminProServiceImpl.delete(selected);

      successCallback();
    } catch (error) {
      handleActionError(error);
    }
  };
};
