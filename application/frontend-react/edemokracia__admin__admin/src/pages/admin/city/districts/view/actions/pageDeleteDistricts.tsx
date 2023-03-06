///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::City::districts#PageDelete
// Action: DeleteAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import { useSnackbar } from '../../../../../../components';
import { errorHandling } from '../../../../../../utilities';
import {
  AdminDistrict,
  AdminDistrictStored,
  AdminCityStored,
  AdminCity,
  AdminDistrictQueryCustomizer,
} from '../../../../../../generated/data-api';
import { adminCityServiceForDistrictsImpl, adminDistrictServiceImpl } from '../../../../../../generated/data-axios';

export type PageDeleteDistrictsAction = () => (
  owner: JudoIdentifiable<AdminCity>,
  selected: AdminDistrictStored,
  successCallback: () => void,
) => Promise<void>;

export const usePageDeleteDistrictsAction: PageDeleteDistrictsAction = () => {
  const [enqueueSnackbar] = useSnackbar();

  return async function pageDeleteDistrictsAction(
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
