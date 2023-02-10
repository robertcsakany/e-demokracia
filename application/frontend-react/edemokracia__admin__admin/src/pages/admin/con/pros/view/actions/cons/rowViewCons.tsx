///////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    S O U R C E
// ------------------------------
// Factory expression: #getActionsForPages(#application)
// Path expression: #pagePath(#self.value)+'actions/'+#pageActionPathSuffix(#self.key,#self.value)+'.tsx'
// Template name: actor/src/pages/actions/action.tsx.hbs
// Action name: edemokracia::admin::Admin::edemokracia::admin::Pro::cons#RowView
// Action owner name: edemokracia::admin::Con.pros#View
// Action DataElement name: cons
// Action DataElement owner name: edemokracia::admin::Pro
// Action DataElement target name: edemokracia::admin::Con
// Owner Page name: edemokracia::admin::Con.pros#View
// Action: ViewAction

import type { JudoIdentifiable } from '@judo/data-api-common';
import type {
  AdminProStored,
  AdminCon,
  AdminConStored,
  AdminConQueryCustomizer,
  AdminPro,
} from '../../../../../../../generated/data-api';
import { useJudoNavigation } from '../../../../../../../components';

export type RowViewConsAction = () => (entry: JudoIdentifiable<AdminCon>) => Promise<void>;

export const useRowViewConsAction: RowViewConsAction = () => {
  const { navigate } = useJudoNavigation();

  return async function (entry: JudoIdentifiable<AdminCon>) {
    navigate(`admin/pro/cons/view/${entry.__signedIdentifier}`);
  };
};
