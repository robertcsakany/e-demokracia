///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::City::districts#RowDelete
// Action owner name: edemokracia::admin::User.activityCities#View
// Action DataElement name: districts
// Action DataElement owner name: edemokracia::admin::City
// Action DataElement target name: edemokracia::admin::District
// Owner Page name: edemokracia::admin::User.activityCities#View
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from '../../../../../../../components';
import { errorHandling } from '../../../../../../../utilities';
import {
  AdminDistrict,
  AdminDistrictStored,
  AdminCityStored,
  AdminCity,
  AdminDistrictQueryCustomizer,
} from '../../../../../../../generated/data-api';
import { adminCityServiceForDistrictsImpl, adminDistrictServiceImpl } from '../../../../../../../generated/data-axios';

export type RowDeleteDistrictsAction = () => (
  owner: JudoIdentifiable<AdminCity>,
  selected: AdminDistrictStored,
  successCallback: () => void,
) => Promise<void>;

export const useRowDeleteDistrictsAction: RowDeleteDistrictsAction = () => {
  const [enqueueSnackbar] = useSnackbar();

  return async function rowDeleteDistrictsAction(
    owner: JudoIdentifiable<AdminCity>,
    selected: AdminDistrictStored,
    successCallback: () => void,
  ) {
    try {
      await adminCityServiceForDistrictsImpl.deleteDistricts(owner, selected);

      successCallback();
    } catch (error) {
      errorHandling(error, enqueueSnackbar);
    }
  };
};
