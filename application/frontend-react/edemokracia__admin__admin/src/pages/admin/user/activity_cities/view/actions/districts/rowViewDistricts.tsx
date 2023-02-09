///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::City::districts#RowView
// Action owner name: edemokracia::admin::User.activityCities#View
// Action DataElement name: districts
// Action DataElement owner name: edemokracia::admin::City
// Action DataElement target name: edemokracia::admin::District
// Owner Page name: edemokracia::admin::User.activityCities#View
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminDistrict,
  AdminDistrictStored,
  AdminCityStored,
  AdminCity,
  AdminDistrictQueryCustomizer,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type RowViewDistrictsAction = () => (entry: JudoIdentifiable<AdminDistrict>) => Promise<void>;

export const useRowViewDistrictsAction: RowViewDistrictsAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminDistrict>) {
    navigate(`admin/city/districts/view/${entry.__signedIdentifier}`);
  };
};
