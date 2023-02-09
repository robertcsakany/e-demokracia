///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Admin::counties#RowView
// Action owner name: edemokracia::admin::Admin.counties#Table
// Action DataElement name: counties
// Action DataElement owner name: edemokracia::admin::Admin
// Action DataElement target name: edemokracia::admin::County
// Owner Page name: edemokracia::admin::Admin.counties#Table
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminCountyQueryCustomizer,
  AdminCountyStored,
  AdminCounty,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type RowViewCountiesAction = () => (entry: JudoIdentifiable<AdminCounty>) => Promise<void>;

export const useRowViewCountiesAction: RowViewCountiesAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminCounty>) {
    navigate(`admin/admin/counties/view/${entry.__signedIdentifier}`);
  };
};
