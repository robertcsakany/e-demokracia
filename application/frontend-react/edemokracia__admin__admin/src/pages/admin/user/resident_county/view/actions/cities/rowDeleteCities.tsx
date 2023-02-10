///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::County::cities#RowDelete
// Action owner name: edemokracia::admin::User.residentCounty#View
// Action DataElement name: cities
// Action DataElement owner name: edemokracia::admin::County
// Action DataElement target name: edemokracia::admin::City
// Owner Page name: edemokracia::admin::User.residentCounty#View
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from '../../../../../../../components';
import { errorHandling } from '../../../../../../../utilities';
import {
  AdminCityQueryCustomizer,
  AdminCityStored,
  AdminCounty,
  AdminCountyStored,
  AdminCity,
} from '../../../../../../../generated/data-api';
import { adminCountyServiceForCitiesImpl, adminCityServiceImpl } from '../../../../../../../generated/data-axios';

export type RowDeleteCitiesAction = () => (
  owner: JudoIdentifiable<AdminCounty>,
  selected: AdminCityStored,
  successCallback: () => void,
) => Promise<void>;

export const useRowDeleteCitiesAction: RowDeleteCitiesAction = () => {
  const [enqueueSnackbar] = useSnackbar();

  return async function rowDeleteCitiesAction(
    owner: JudoIdentifiable<AdminCounty>,
    selected: AdminCityStored,
    successCallback: () => void,
  ) {
    try {
      await adminCountyServiceForCitiesImpl.deleteCities(owner, selected);

      successCallback();
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    }
  };
};
