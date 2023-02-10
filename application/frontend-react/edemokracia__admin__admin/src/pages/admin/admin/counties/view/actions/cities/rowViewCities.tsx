///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::County::cities#RowView
// Action owner name: edemokracia::admin::Admin.counties#View
// Action DataElement name: cities
// Action DataElement owner name: edemokracia::admin::County
// Action DataElement target name: edemokracia::admin::City
// Owner Page name: edemokracia::admin::Admin.counties#View
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminCityQueryCustomizer,
  AdminCityStored,
  AdminCounty,
  AdminCountyStored,
  AdminCity,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type RowViewCitiesAction = () => (entry: JudoIdentifiable<AdminCity>) => Promise<void>;

export const useRowViewCitiesAction: RowViewCitiesAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminCity>) {
    navigate(`admin/county/cities/view/${entry.__signedIdentifier}`);
  };
};
