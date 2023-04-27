//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// --------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx
// Template file: actor/src/pages/actions/action.tsx.hbs
// Action: ViewAction

import { OBJECTCLASS } from '@pandino/pandino-api';
import { useTrackService } from '@pandino/react-hooks';
import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminCityQueryCustomizer,
  AdminCityStored,
  AdminCounty,
  AdminCountyStored,
  AdminCity,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export const ROW_VIEW_CITIES_ACTION_INTERFACE_KEY = 'RowViewCitiesAction';
export type RowViewCitiesAction = () => (owner: JudoIdentifiable<AdminCounty>, entry: AdminCityStored) => Promise<void>;

export const useRowViewCitiesAction: RowViewCitiesAction = () => {
  const { navigate } = useJudoNavigation();
  const { service: useCustomNavigation } = useTrackService<RowViewCitiesAction>(
    `(${OBJECTCLASS}=${ROW_VIEW_CITIES_ACTION_INTERFACE_KEY})`,
  );

  if (useCustomNavigation) {
    const customNavigation = useCustomNavigation();
    return customNavigation;
  }

  return async function (owner: JudoIdentifiable<AdminCounty>, entry: AdminCityStored) {
    navigate(`admin/county/cities/view/${entry.__signedIdentifier}`);
  };
};
